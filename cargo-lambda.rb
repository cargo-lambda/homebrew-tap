class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.6/cargo-lambda-v1.8.6.aarch64-apple-darwin.tar.gz"
      sha256 "bc73b657c0cdfe15badca1b2cb485df742dd9d16440dbff17ba0a29655c27c79"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.6/cargo-lambda-v1.8.6.x86_64-apple-darwin.tar.gz"
      sha256 "a43e2dd0d3626d7c7253978801104b6fc8688d27dd2f743d19ba769168014fd6"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.6/cargo-lambda-v1.8.6.aarch64-unknown-linux-musl.tar.gz"
      sha256 "796f96196f3ba14a4a2542cf7f7dd480eb556f9fa5f04653a1ad4dffc5044567"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.8.6/cargo-lambda-v1.8.6.x86_64-unknown-linux-musl.tar.gz"
      sha256 "717261a71adad7fdae3056882d2422fc9ecf9232eea9e5aaf8130d1cbb9c76e6"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
