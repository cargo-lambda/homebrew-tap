class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.20.2/cargo-lambda-v0.20.2.apple-darwin.tar.gz"
    sha256 "839f8074190d37392174b68f0f52a71e532e1c8804d939f58b53008735312c00"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.20.2/cargo-lambda-v0.20.2.x86_64-unknown-linux-musl.tar.gz"
    sha256 "053f294db3b4406e06c686514ae441cfe06edc6b0c05fcfa7ec241ce2577a168"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
