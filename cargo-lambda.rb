class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.20.1/cargo-lambda-v0.20.1.apple-darwin.tar.gz"
    sha256 "d72531efdea08a4603fd65d7440f8c6f4153397a18536f8676f3478257774f5b"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.20.1/cargo-lambda-v0.20.1.x86_64-unknown-linux-musl.tar.gz"
    sha256 "ea86c99348ff1f7568d826e8a00a8cfa49728c2b0a1d76482639898d27d9bbde"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
