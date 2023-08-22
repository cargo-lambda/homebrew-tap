class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.20.3/cargo-lambda-v0.20.3.apple-darwin.tar.gz"
    sha256 "ab4f806507a251c4a89bc6bbdce209b54c29132f5a12ffab17147690c6771865"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.20.3/cargo-lambda-v0.20.3.x86_64-unknown-linux-musl.tar.gz"
    sha256 "e3d3557f48435207efa9f6b9f9e8af82f8490d0d091e65e95e4af8ac2d5f8419"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
