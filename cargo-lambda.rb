class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.16.1/cargo-lambda-v0.16.1.apple-darwin.tar.gz"
    sha256 "45d5010a494209336d6d2a4978778d94ae1deba7aa020fa8456bdaffbc2d2c9a"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.16.1/cargo-lambda-v0.16.1.x86_64-unknown-linux-musl.tar.gz"
    sha256 "3b539a4b0d4b4a0303520d606649c16078b01b60d292e48544a23eff51d6ccb5"
  end
  license "MIT"

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
