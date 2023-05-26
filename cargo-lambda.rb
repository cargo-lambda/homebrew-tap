class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.19.2/cargo-lambda-v0.19.2.apple-darwin.tar.gz"
    sha256 "012b1bd63c80281ca655c43bd0283a8eb3e388ccf2640ed546cbaa9e9e15caaa"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.19.2/cargo-lambda-v0.19.2.x86_64-unknown-linux-musl.tar.gz"
    sha256 "23aa8b0080cfdce895382280f24465d06f15c86ee4aa560ec0db483359ee5e9c"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
