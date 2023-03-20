class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.18.0/cargo-lambda-v0.18.0.apple-darwin.tar.gz"
    sha256 "42ff9470812c574837f983ba9567e5ea8d9db545630f2ae6090e86eb9e8e33c8"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.18.0/cargo-lambda-v0.18.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "b9116174d672faba6406aef70154299e734eb480471a0c20fa4aab289df48981"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
