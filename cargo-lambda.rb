class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.9.0/cargo-lambda-v0.9.0.apple-darwin.tar.gz"
    sha256 "808d1c73fd28a74c1229eaf6fecf5b04288d12ba48cdef8fd13299535233efd7"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.9.0/cargo-lambda-v0.9.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "244b76c56a861be8814efbdee273c2c9330f8bb488f8ca8613a7359aa57b72f5"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
