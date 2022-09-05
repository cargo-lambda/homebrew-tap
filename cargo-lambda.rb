class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.11.1/cargo-lambda-v0.11.1.apple-darwin.tar.gz"
    sha256 "338648c703914d834ee92116c9f7d8fdbf94f82f7f3d1e15e7aedaa9bab47945"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.11.1/cargo-lambda-v0.11.1.x86_64-unknown-linux-musl.tar.gz"
    sha256 "bb0e8f0b06bdea9dbd64704ea760920cd5b10a00886c441d90cf69b1e797517a"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
