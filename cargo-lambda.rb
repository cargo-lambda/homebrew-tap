class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.21.1/cargo-lambda-v0.21.1.apple-darwin.tar.gz"
    sha256 "368de36ff7f833c2a6cbfde423b5e6b3a9304606ae208cb09d1a205da77aef06"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.21.1/cargo-lambda-v0.21.1.x86_64-unknown-linux-musl.tar.gz"
    sha256 "80020f0dc4b96ca6fcf9ce2c2d68f091322c72f9e6c2c1bf9e6e5a8d2c4853b3"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
