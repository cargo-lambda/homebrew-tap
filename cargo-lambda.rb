class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.8.1/cargo-lambda-v0.8.1-apple-darwin.tar.gz"
    sha256 "ae65d0b36c372e0dac6f92e2e0066842f7f4745310a00696ff13d630d239a31a"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.8.1/cargo-lambda-v0.8.1.x86_64-unknown-linux-musl.tar.gz"
    sha256 "d71c68ae22d03e73bb0354e50b3e4110f1f05014bc8e9add46ccd109835a0aad"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
