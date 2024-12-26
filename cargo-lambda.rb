class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.2/cargo-lambda-v1.6.2.aarch64-apple-darwin.tar.gz"
      sha256 "e0e7696ba0f8fa6e3843d3a6a11e2fcd91b92fd4ef4916eca58617ec69a69859"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.2/cargo-lambda-v1.6.2.x86_64-apple-darwin.tar.gz"
      sha256 "0b28214cd6acf246185817ef2d1e741a68bdc2f8b1712eb5c2163393ed12b4b9"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.2/cargo-lambda-v1.6.2.aarch64-unknown-linux-musl.tar.gz"
      sha256 "80152d6829d1c1a275ed8e554cc1a872b682c2cb10424922482846e06cd0aae8"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.2/cargo-lambda-v1.6.2.x86_64-unknown-linux-musl.tar.gz"
      sha256 "a2c8dc44b9d859b42e594860fe82499e069c721b0990b7baca9ce590fd2f03d4"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
