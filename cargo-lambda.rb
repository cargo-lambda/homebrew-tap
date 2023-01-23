class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.16.0/cargo-lambda-v0.16.0.apple-darwin.tar.gz"
    sha256 "f1757a76d0a28fee4ebd6d8a76d6331bd18694a900185dd6aab2968d1b485bc9"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.16.0/cargo-lambda-v0.16.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "e040a075a66b4d5385f96f873e95c399f122ead6dd4c3a4157fa9811e8547145"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
