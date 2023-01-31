class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.17.0/cargo-lambda-v0.17.0.apple-darwin.tar.gz"
    sha256 "e9c33470f826422a0db207db946e2f420d22493b4526663b1ad7d7716c4e280e"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.17.0/cargo-lambda-v0.17.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "f34e08c008f1b1aa7a3ac9b6c535e9973445d4ef6dc6a926439457cc4fd7017d"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
