class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.8.2/cargo-lambda-v0.8.2.apple-darwin.tar.gz"
    sha256 "19493dbc01c8affc387b6199580260971f37cdcb020e2f09930b582e2a0cfa5b"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.8.2/cargo-lambda-v0.8.2.x86_64-unknown-linux-musl.tar.gz"
    sha256 "a792d672838608e8267ca6ca9fc25c99eb19ed7c6ec29756341471f1ca88c3b3"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
