class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.2.0/cargo-lambda-v1.2.0.aarch64-apple-darwin.tar.gz"
      sha256 "8bf9a8ad82893324b335bf2c9eb459faa1eea4611583a343d6d3159180d0c141"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.2.0/cargo-lambda-v1.2.0.x86_64-apple-darwin.tar.gz"
      sha256 "7efb189f4def9b9b524e2cfe5b11fa3b2bafeff262c5478b58c9dfdf898e4c7d"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.2.0/cargo-lambda-v1.2.0.aarch64-unknown-linux-musl.tar.gz"
      sha256 "649c8539f5e12b4bef4e9360307fa30d00760fe3b4efed3cebe7c3c25234be4b"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.2.0/cargo-lambda-v1.2.0.x86_64-unknown-linux-musl.tar.gz"
      sha256 "dc85ae42f0b43badb1758b627f3cf1612c1033710fe7b4fc48927fe1045eaf6d"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
