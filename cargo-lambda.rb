class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.21.0/cargo-lambda-v0.21.0.apple-darwin.tar.gz"
    sha256 "916150b667087ddc826c2802cee3f51af110fb1783e531885f9cdb612f6a9e65"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.21.0/cargo-lambda-v0.21.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "0488e66c392c8a474c8eadb3854e56f29bd07b13c89be97417fd39cbd507e7da"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
