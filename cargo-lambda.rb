class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.4/cargo-lambda-v1.8.4.aarch64-apple-darwin.tar.gz"
      sha256 "db6006e02ed008ed298e267d9407e08d3c92f207b6a8be24d997bbd98540e203"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.4/cargo-lambda-v1.8.4.x86_64-apple-darwin.tar.gz"
      sha256 "0fed37fa41e680ffbc12606f7c93ae7813d7866a53d264ce5f5986b884c8f2ac"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.4/cargo-lambda-v1.8.4.aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6b5b7cbb6d6f0b4be7f2be3cab2598a60ea9c58a0f80496d9cb0e020511b128"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.4/cargo-lambda-v1.8.4.x86_64-unknown-linux-musl.tar.gz"
      sha256 "97a743fce803b331cc1e38d9a05cd2455233b24d697798448d0d00ec53c45074"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
