class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.1/cargo-lambda-v1.6.1.aarch64-apple-darwin.tar.gz"
      sha256 "c5ef6af3282ff0ab43c0084087339fab99874cb9cea6f6faed114a1d71efbf6b"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.1/cargo-lambda-v1.6.1.x86_64-apple-darwin.tar.gz"
      sha256 "f1d5c34f47953d32f553210a883e68e4e9060408e257f9b3a9787bd80d4e4e7b"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.1/cargo-lambda-v1.6.1.aarch64-unknown-linux-musl.tar.gz"
      sha256 "3b5360f4d1c7af13c9302e1b2ab9095e5767411771e55b90edb35a82bce40406"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.6.1/cargo-lambda-v1.6.1.x86_64-unknown-linux-musl.tar.gz"
      sha256 "b1ae3785547b5b0b751bc5a122ba6f956d726155279880676b9c14cdf14dfbdc"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
