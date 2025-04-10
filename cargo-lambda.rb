class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.3/cargo-lambda-v1.8.3.aarch64-apple-darwin.tar.gz"
      sha256 "83edbbba7e7bd2cd2d4a255fb6a356f70e1dc3d80c073a9ea1895d771838a35e"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.3/cargo-lambda-v1.8.3.x86_64-apple-darwin.tar.gz"
      sha256 "1155e540037549ee98dc2e065563895fbefa92135bffc8be305bd26a7dd31704"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.3/cargo-lambda-v1.8.3.aarch64-unknown-linux-musl.tar.gz"
      sha256 "c4b808f777a7bffe7a7851ef98a609576a621c7fecea690fd2077eb25c3f01ee"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.3/cargo-lambda-v1.8.3.x86_64-unknown-linux-musl.tar.gz"
      sha256 "9ffe7b8f6ffaad73484be4fd2e5c4365e3992a0ff074d11df9c0d2895a28cff4"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
