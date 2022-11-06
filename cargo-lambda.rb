class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.11.3/cargo-lambda-v0.11.3.apple-darwin.tar.gz"
    sha256 "8c6702331ed1f4490515db91310cd4d7121b44a258351066a60fd4aeaaf111f5"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.11.3/cargo-lambda-v0.11.3.x86_64-unknown-linux-musl.tar.gz"
    sha256 "2af7205ca79af402915a56afacdcf57071976aabd1ade7281f44563e7c29cee1"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
