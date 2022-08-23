class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.11.0/cargo-lambda-v0.11.0.apple-darwin.tar.gz"
    sha256 "cc0bddff53c4b065e19316cd0321d66b25776af39bceda5d2d6e6063a2c1348c"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.11.0/cargo-lambda-v0.11.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "d861a003db11b58eea3cf8ee447a04dbf0ef662fc8e9d638db171211707f5e5a"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
