class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.15.0/cargo-lambda-v0.15.0.apple-darwin.tar.gz"
    sha256 "50156a589300b1be1ae840184e2a7a2bb78abb477e078d349e1c28e992dc3978"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.15.0/cargo-lambda-v0.15.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "c2fceaf4a2a44adeefa26bedb75db5c9d81c9da71399de2c3198f7b6363ca307"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
