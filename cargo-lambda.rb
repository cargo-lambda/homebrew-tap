class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.10.1/cargo-lambda-v0.10.1.apple-darwin.tar.gz"
    sha256 "d0bcbc1136c3960af925d1dc4a71d93135b281bef1e1a93415f2eebabdeb11d4"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.10.1/cargo-lambda-v0.10.1.x86_64-unknown-linux-musl.tar.gz"
    sha256 "e6ff26d712cd9a20cf73e26c694060f0f12c6a89cec557723a494dd64b230a73"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
