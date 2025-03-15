class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.0/cargo-lambda-v1.8.0.aarch64-apple-darwin.tar.gz"
      sha256 "3aaa8013e44e15f873b8afb8e5d6999738f842653dfa5d8e524e9808005b4be8"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.0/cargo-lambda-v1.8.0.x86_64-apple-darwin.tar.gz"
      sha256 "89ce9efa651468f79c9541e2b2a7d23a39ebdf168b3c194dc1d18bbdd3cbce9c"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.0/cargo-lambda-v1.8.0.aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a6bef3b064da618b9db6b3bfdf23b070f57ec7ee3867cf1e633f525dba81d29"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.0/cargo-lambda-v1.8.0.x86_64-unknown-linux-musl.tar.gz"
      sha256 "4d6943eb3f0960ed4aa5ecf7fd52a9cb7b85540f67df1a223af298c4358d5538"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
