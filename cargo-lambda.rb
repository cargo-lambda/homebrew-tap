class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.19.3/cargo-lambda-v0.19.3.apple-darwin.tar.gz"
    sha256 "9ab2b815441359637b1b7539fd07138c3c6ebe3c85785c83dd0306b7a2241a4f"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.19.3/cargo-lambda-v0.19.3.x86_64-unknown-linux-musl.tar.gz"
    sha256 "9a0e7fd2b9cff12da842060224e344f14f01fabeb04f5c4d8fed6394026f6161"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
