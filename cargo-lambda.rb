class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.22.0/cargo-lambda-v0.22.0.apple-darwin.tar.gz"
    sha256 "dfb171059760af62a3d9def072124dcc0b8b7dc818b49139b0a66ba7a64fdd88"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.22.0/cargo-lambda-v0.22.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "c55f066d8f16dcb126150333d09cb603a747aa378b46498f204262513c374bf0"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
