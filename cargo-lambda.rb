class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.0.2/cargo-lambda-v1.0.2.apple-darwin.tar.gz"
    sha256 "5e58484dcaadf0aaa0f1d3a30390c38f5c84b746f701d591cf1bd70d978f56a2"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.0.2/cargo-lambda-v1.0.2.x86_64-unknown-linux-musl.tar.gz"
    sha256 "c3e0a5c136e5c8eb99525fc59cbdec584d250d4053a5a060d48690a78af7d2f4"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
