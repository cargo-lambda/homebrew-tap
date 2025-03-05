class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.7.1/cargo-lambda-v1.7.1.aarch64-apple-darwin.tar.gz"
      sha256 "5aaf0d9427aff2c078170cfa984dca7c22e0aa061f50cd90c82ab38ca7c996c1"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.7.1/cargo-lambda-v1.7.1.x86_64-apple-darwin.tar.gz"
      sha256 "babffd37aefb75d53b5bc19b549c765a26d8c60845bbc220a4db6352b14a24d1"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.7.1/cargo-lambda-v1.7.1.aarch64-unknown-linux-musl.tar.gz"
      sha256 "14035f28abfbb4935753dccc0927fa4f0112f544633e83b466dee6ab73da5870"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.7.1/cargo-lambda-v1.7.1.x86_64-unknown-linux-musl.tar.gz"
      sha256 "cfcd57f899735adcaaf4c8dd091c4685298e6f23ab1502bf5f21f679a226d665"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
