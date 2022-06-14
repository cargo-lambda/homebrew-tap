class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.8.3/cargo-lambda-v0.8.3.apple-darwin.tar.gz"
    sha256 "7d0b3d231659a42c30fd9357da30cfb41221dc00b925ed872f6fb2295f0963e3"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.8.3/cargo-lambda-v0.8.3.x86_64-unknown-linux-musl.tar.gz"
    sha256 "60e4f3365f1e7096e816c391ba209afecfc500247a6f35194ffd3d49b190a4c4"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
