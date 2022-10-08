class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.11.2/cargo-lambda-v0.11.2.apple-darwin.tar.gz"
    sha256 "6422e7088dd52a858b85f63e5931df941854dfefd877c5b59c3ac3fcf713af60"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.11.2/cargo-lambda-v0.11.2.x86_64-unknown-linux-musl.tar.gz"
    sha256 "0879edb3ae19f58fa4066f78342a460a29f31fbee2146278e73006a5611a0009"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
