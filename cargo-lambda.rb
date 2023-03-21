class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.18.1/cargo-lambda-v0.18.1.apple-darwin.tar.gz"
    sha256 "406f75b25f17179d327219aa93d2a74201f769c76f34d8205aea0f4d61fbc047"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.18.1/cargo-lambda-v0.18.1.x86_64-unknown-linux-musl.tar.gz"
    sha256 "82f78905cecb4ac6cf646b8439e9905aa56bf2c36c2b8d945f1f267c984d3b61"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
