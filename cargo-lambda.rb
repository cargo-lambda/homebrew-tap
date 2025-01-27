class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.3/cargo-lambda-v1.6.3.aarch64-apple-darwin.tar.gz"
      sha256 "4494a562a4372f670bd6975484cc4d33334789961131553c81d35f953a3f0287"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.3/cargo-lambda-v1.6.3.x86_64-apple-darwin.tar.gz"
      sha256 "1312ae530f4c3d8701640e159a19f2943461c81865890cf8d08d9807afcf3ca0"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.3/cargo-lambda-v1.6.3.aarch64-unknown-linux-musl.tar.gz"
      sha256 "eda5196b2ea453fc357d1626720e79655fa64ef5e28a7e691698a268ebde5a34"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.3/cargo-lambda-v1.6.3.x86_64-unknown-linux-musl.tar.gz"
      sha256 "670a1cf1ca2c01d30c8dd06ab7faae36158add03b0e9b2fbf0d1bbf8b8edf8e8"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
