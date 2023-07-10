class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.19.5/cargo-lambda-v0.19.5.apple-darwin.tar.gz"
    sha256 "b138a38f1f4a1569494cdeb3003fa579bcab2b3a342e88f0dcbfd6421c278e3d"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.19.5/cargo-lambda-v0.19.5.x86_64-unknown-linux-musl.tar.gz"
    sha256 "3af4b6cc9580cdfe80d5b33eb428c5b819cb3b528664e777e94be8b532cca285"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
