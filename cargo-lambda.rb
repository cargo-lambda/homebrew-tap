class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.4.0/cargo-lambda-v1.4.0.aarch64-apple-darwin.tar.gz"
      sha256 "ef1a8f5521d1d4d0f08b3de6149c48455395aec7328d7587abcdab83f80d736b"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.4.0/cargo-lambda-v1.4.0.x86_64-apple-darwin.tar.gz"
      sha256 "9c2a9e5427c1de759970d8d51efd50ec2a435ae348804cb4a660f1c3b9b43b16"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.4.0/cargo-lambda-v1.4.0.aarch64-unknown-linux-musl.tar.gz"
      sha256 "5cbb3e1291d4c20a5e988eb690a5153f86be44a2fd6bec6485d00ef1e1aa13aa"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.4.0/cargo-lambda-v1.4.0.x86_64-unknown-linux-musl.tar.gz"
      sha256 "9ce70414d822e3b901403d63598581d2a35b7e16b1e2009308da0b120cb2f280"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
