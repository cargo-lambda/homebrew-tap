class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.2/cargo-lambda-v1.8.2.aarch64-apple-darwin.tar.gz"
      sha256 "778eccaaf22ed974bceeb2dec06ec23cbb8c66225d428ff4e09b655bc440c105"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.2/cargo-lambda-v1.8.2.x86_64-apple-darwin.tar.gz"
      sha256 "fe84a7c215aeee70e5df1c8ae9bb9e531674f1a29b8678367f06522c48316f72"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.2/cargo-lambda-v1.8.2.aarch64-unknown-linux-musl.tar.gz"
      sha256 "3a2c5d2ebaebc701e288a108e877bf1f3affe30baf8d37509cba2cf0d20f4f6d"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.2/cargo-lambda-v1.8.2.x86_64-unknown-linux-musl.tar.gz"
      sha256 "d2a83aa4c055fd50c69c010e6bb7c02fbe0c3f63ca0e00d6e30b4e21706f46fc"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
