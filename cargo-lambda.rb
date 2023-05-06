class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.19.1/cargo-lambda-v0.19.1.apple-darwin.tar.gz"
    sha256 "97c613bc8d55fdc8b864ad424a94f35eb9e655e489acad01698fda36b295a890"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.19.1/cargo-lambda-v0.19.1.x86_64-unknown-linux-musl.tar.gz"
    sha256 "d1b46975ff353572b30551384fa513dba593e6030c855ddc0d14b16e92310496"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
