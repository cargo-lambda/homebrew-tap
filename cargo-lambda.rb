class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.0.0/cargo-lambda-v1.0.0.apple-darwin.tar.gz"
    sha256 "f666ef921510f750414f17a6a31bc8557b08fb3c772b797581c929b873de57d0"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.0.0/cargo-lambda-v1.0.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "b4f50a471d45901bf4027f9fc23206922fb65b68e90a7d1dcb78ab30c1f6bb88"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
