class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.1/cargo-lambda-v1.8.1.aarch64-apple-darwin.tar.gz"
      sha256 "e283b609c895c7ba99c14bd61a2b4662e18bd401537b5d685509e2968653e87b"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.1/cargo-lambda-v1.8.1.x86_64-apple-darwin.tar.gz"
      sha256 "e9aaa0d27547cbe121a0c2b7892d5776f72c025425ae8b81e15bddda7051eb25"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.1/cargo-lambda-v1.8.1.aarch64-unknown-linux-musl.tar.gz"
      sha256 "b22d6d5c44019c4421a538003c3845224084ac85ef06746586d7508207e58eef"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.1/cargo-lambda-v1.8.1.x86_64-unknown-linux-musl.tar.gz"
      sha256 "75a94e38c88a497c7a79d1f783985a9502aced857a5e8dd6b8f3277766b3a687"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
