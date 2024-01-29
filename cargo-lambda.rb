class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.0.3/cargo-lambda-v1.0.3.apple-darwin.tar.gz"
    sha256 "9eec4204653246f81a41a456fb0964497f23c921da35f1b887eed2ec113f1cca"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.0.3/cargo-lambda-v1.0.3.x86_64-unknown-linux-musl.tar.gz"
    sha256 "dd51eb85c541663238b42f3ba50b97c9cf896509880377272a538b55d31530cd"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
