class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.17.2/cargo-lambda-v0.17.2.apple-darwin.tar.gz"
    sha256 "84056f50671f14f8fc3b964b0ba28a58093e435e60db4880dac316a35698ebf2"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.17.2/cargo-lambda-v0.17.2.x86_64-unknown-linux-musl.tar.gz"
    sha256 "b33231bd49d2d0cd85e8c8a97f368ad19c496e4e21a11cc8b866ba3dcb496483"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
