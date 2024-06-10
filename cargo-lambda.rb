class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.3.0/cargo-lambda-v1.3.0.aarch64-apple-darwin.tar.gz"
      sha256 "8cd1d176a690d5b3704fae9c58e0e949e481e79eaa24cb5338f5cdfcf564ca05"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.3.0/cargo-lambda-v1.3.0.x86_64-apple-darwin.tar.gz"
      sha256 "49043e568b1d1817b0d7e14b7bd23d0938f37b5a951ad6dbd08e8057a1e2e60b"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.3.0/cargo-lambda-v1.3.0.aarch64-unknown-linux-musl.tar.gz"
      sha256 "6e1f434d70a60180d80f6e61f0fd50272a0e849d5bfa7c64d8df066f85881627"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.3.0/cargo-lambda-v1.3.0.x86_64-unknown-linux-musl.tar.gz"
      sha256 "b96973d035b328413fd2a98881f01ab8de8dcaef56c6f826d05dee48925b340f"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
