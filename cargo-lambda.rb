class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.13.0/cargo-lambda-v0.13.0.apple-darwin.tar.gz"
    sha256 "59122120a8eb0fc241dd9e997213a84dc11809ca47c3d9728b5e407e9888df2d"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.13.0/cargo-lambda-v0.13.0.x86_64-unknown-linux-musl.tar.gz"
    sha256 "8e315592a925f6aaa51ffbb448bff66589bedce617e3cded4b5682fcdcb192c9"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
