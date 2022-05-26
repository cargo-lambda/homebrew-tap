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

MAC_URL = 'https://github.com/cargo-lambda/cargo-lambda/releases/download/%s/cargo-lambda-%s.apple-darwin.tar.gz'
LINUX_URL = 'https://github.com/cargo-lambda/cargo-lambda/releases/download/%s/cargo-lambda-%s.x86_64-unknown-linux-musl.tar.gz'

MAC_SHA_URL = 'https://github.com/cargo-lambda/cargo-lambda/releases/download/%s/cargo-lambda-%s.apple-darwin.tar.gz.sha256'
LINUX_SHA_URL = 'https://github.com/cargo-lambda/cargo-lambda/releases/download/%s/cargo-lambda-%s.x86_64-unknown-linux-musl.tar.gz.sha256'

filename = 'cargo-lambda.erb'  # @arg1 and @arg2 are used in example.rhtml
erb = ERB.new(File.read(filename))

version = ARGV[0]
puts "Upgrading to version #{version}"

@mac_url = MAC_URL % [version, version]
@linux_url = LINUX_URL % [version, version]

mac_sha_url = MAC_SHA_URL % [version, version]
linux_sha_url = LINUX_SHA_URL % [version, version]

@mac_sha = fetch(mac_sha_url).body.split(' ')[0]
@linux_sha = fetch(linux_sha_url).body.split(' ')[0]

result = erb.result(binding)

File.write('cargo-lambda.rb', result)

