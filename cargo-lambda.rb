class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.20.4/cargo-lambda-v0.20.4.apple-darwin.tar.gz"
    sha256 "62372e370272c89eb4780ca5c7c0118fe929ef068b0def6ebe6b297bec7cb0d5"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.20.4/cargo-lambda-v0.20.4.x86_64-unknown-linux-musl.tar.gz"
    sha256 "c9401edd5568b5dde9ab72941fa77c0c604294c86724d365683a57d4e08f301c"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
