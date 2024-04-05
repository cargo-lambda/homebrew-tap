class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.2.1/cargo-lambda-v1.2.1.aarch64-apple-darwin.tar.gz"
      sha256 "c774a4f205e2f71676653976fbd52d78c64b109c6b1f54104c245e41d4814773"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.2.1/cargo-lambda-v1.2.1.x86_64-apple-darwin.tar.gz"
      sha256 "c6bdb78a40504d63a4ee52ba2796fde8f4c97a664bae7478ab11fca815510769"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.2.1/cargo-lambda-v1.2.1.aarch64-unknown-linux-musl.tar.gz"
      sha256 "1125481a30f589d2d74e76bb9b4c3ee84a41e86bd53aa0d7298db5ab2583b6d8"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.2.1/cargo-lambda-v1.2.1.x86_64-unknown-linux-musl.tar.gz"
      sha256 "a58379bafeecc7f8e422fcc2bcf4ef01c5a66dd72d6225e9aa5338fa33e1468b"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
