class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.0/cargo-lambda-v1.6.0.aarch64-apple-darwin.tar.gz"
      sha256 "54134acab2927926975029fba6b881f61406588fa51f211253c13b9699b5fd25"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.0/cargo-lambda-v1.6.0.x86_64-apple-darwin.tar.gz"
      sha256 "21036f919ffe33dc74d7dd0ad3388be6f28c7598b19d389a5b9a1a3ed86b8cc5"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.0/cargo-lambda-v1.6.0.aarch64-unknown-linux-musl.tar.gz"
      sha256 "5238b984b4096e48dd96a86699f7117816a13c0cc0ab6cc5d9e0a52472854cc5"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.0/cargo-lambda-v1.6.0.x86_64-unknown-linux-musl.tar.gz"
      sha256 "b9d6e8b13f10f2515d3b46d1969e9c3b09bbeb14fc6721374bee2639348dc4b0"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
