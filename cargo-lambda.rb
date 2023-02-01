class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.17.1/cargo-lambda-v0.17.1.apple-darwin.tar.gz"
    sha256 "b6825a713f94de3416dbb0c7fc5bfe5b391155de9e774e4c4738ce59df7b075b"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.17.1/cargo-lambda-v0.17.1.x86_64-unknown-linux-musl.tar.gz"
    sha256 "d6666c17b7e45ca51fe2a4ddfdc001f090b9feb99f2f3746c3fb63e7f777fa0b"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
