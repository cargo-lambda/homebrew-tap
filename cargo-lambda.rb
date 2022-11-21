class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.12.0/cargo-lambda-v0.12.0.apple-darwin.tar.gz"
    sha256 "e510cdfff06b9aacbd13aebfd1013ad33e6493f0c9ca57ed6327c0ac4f268172"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.12.0/cargo-lambda-v0.12.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "e6d98a9dcd6e0cf4db334b74ef7f688039486aea44c765749ef35d4b0f595647"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
