class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.0.1/cargo-lambda-v1.0.1.apple-darwin.tar.gz"
    sha256 "9f3ab948f0cbf1319c56523ba5f9eff11ac12d0eadeb4a02170aae8894836b28"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.0.1/cargo-lambda-v1.0.1.x86_64-unknown-linux-musl.tar.gz"
    sha256 "c6d55a0385e612799963c65b828dc303ab78872a4fc720fbc4e489ab4c4538ee"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
