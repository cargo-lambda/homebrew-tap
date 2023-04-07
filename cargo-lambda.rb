class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.19.0/cargo-lambda-v0.19.0.apple-darwin.tar.gz"
    sha256 "d7961dbaffa3f06f244a4281322e5ef057316942775dcc56753bb7e3535952cf"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.19.0/cargo-lambda-v0.19.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "d59b02cf18def1503681c27e17fa15832992a77e6ccf1527cf6dd8e5c8f7e931"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
