class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.19.4/cargo-lambda-v0.19.4.apple-darwin.tar.gz"
    sha256 "ffe19db01e88633bb7d5359b9f269f8ff82a27f991288c7d6b71cffa8496b6bc"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.19.4/cargo-lambda-v0.19.4.x86_64-unknown-linux-musl.tar.gz"
    sha256 "63c8b1da12c4e9318d5410236fdb0bc1fd4ea15123d91a168172cddce52c12c0"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
