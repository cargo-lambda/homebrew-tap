class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.10.0/cargo-lambda-v0.10.0.apple-darwin.tar.gz"
    sha256 "f46c5c14f04b1292083ab52751f14c0da612aee9a290ff7c6c78c7b6513892b0"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.10.0/cargo-lambda-v0.10.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "60c6c7aa31400644ee067a4a8f1f12f7d61ac29ec12d021c05bb7fa583729a4a"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
