class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.5.0/cargo-lambda-v1.5.0.aarch64-apple-darwin.tar.gz"
      sha256 "720515d6b8922bf9c05d396851590e845b880e6cc3f02f4f6904b5e9eda6e095"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.5.0/cargo-lambda-v1.5.0.x86_64-apple-darwin.tar.gz"
      sha256 "f5d25ae304efeb4ef6a625274532ee17606b8ab6007096790e598d8d9de35b55"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.5.0/cargo-lambda-v1.5.0.aarch64-unknown-linux-musl.tar.gz"
      sha256 "e3497a2980ac8f9cf2ae3868cb8998e5c0af8236e69dda06649fe7f6fefed407"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.5.0/cargo-lambda-v1.5.0.x86_64-unknown-linux-musl.tar.gz"
      sha256 "c23a50b7f53bcfee090e514e38d4e76d9fa9d68a92e72163dd017589f0a2da01"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
