class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.14.0/cargo-lambda-v0.14.0.apple-darwin.tar.gz"
    sha256 "315e968939186f10d05ae6f884ba07303803ebe72f1a237c688bf513f326e818"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.14.0/cargo-lambda-v0.14.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "85beda1e3a7b45656d172bc185b44da4af83cfc31d25f161f86f9b2d321ecfb6"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
