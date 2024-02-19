require 'erb'
require 'net/http'

def fetch(uri_str, limit = 2)
  # You should choose a better exception.
  raise ArgumentError, 'too many HTTP redirects' if limit == 0

  response = Net::HTTP.get_response(URI(uri_str))

  case response
  when Net::HTTPSuccess then
    response
  when Net::HTTPRedirection then
    location = response['location']
    fetch(location, limit - 1)
  else
    raise ArgumentError, "invalid response #{response}"
  end
end

class Release
  attr_reader :url, :sha

  def initialize(target, version)
    args = {target: target, version: version}
    @url = 'https://github.com/cargo-lambda/cargo-lambda/releases/download/%<version>s/cargo-lambda-%<version>s.%<target>s.tar.gz' % args
    @sha = fetch(@url + '.sha256').body.split(' ')[0]
  end
end

filename = 'cargo-lambda.erb'
erb = ERB.new(File.read(filename))

version = ARGV[0]
puts "Upgrading to version #{version}"

@mac_intel = Release::new('x86_64-apple-darwin', version)
@mac_arm = Release::new('aarch64-apple-darwin', version)

@linux_intel = Release::new('x86_64-unknown-linux-musl', version)
@linux_arm = Release::new('aarch64-unknown-linux-musl', version)

result = erb.result(binding)

File.write('cargo-lambda.rb', result)
