class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.20.0/cargo-lambda-v0.20.0.apple-darwin.tar.gz"
    sha256 "21a328b08bd1321f7c312ded00f1f6b5453151f3aa1eda44210e93ac45057682"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.20.0/cargo-lambda-v0.20.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "fa5e9ba975c672af2515bd9bac4c0c6ce72f59718fc6fe19090021af381e7cba"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
