class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.5/cargo-lambda-v1.8.5.aarch64-apple-darwin.tar.gz"
      sha256 "88847c5c24c15762fcc657cb4d8a809535361e361dc1e159733377f49692f86a"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.5/cargo-lambda-v1.8.5.x86_64-apple-darwin.tar.gz"
      sha256 "813aca0784da967ce8745953717e38ad2e512999c276d0b6764c9092f4a7a5ac"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.5/cargo-lambda-v1.8.5.aarch64-unknown-linux-musl.tar.gz"
      sha256 "c68117e4669724a813f0d30e923869cb11d52d1d31b0452fc81662be474c5c9e"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.5/cargo-lambda-v1.8.5.x86_64-unknown-linux-musl.tar.gz"
      sha256 "c85abcef098b2add55fcbf44b1287663bae26773dd1e900fb2d99b1f8d8453af"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
