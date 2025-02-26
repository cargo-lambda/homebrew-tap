class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.7.0/cargo-lambda-v1.7.0.aarch64-apple-darwin.tar.gz"
      sha256 "d9dc72ab5b4ef8fca16bcd24b21072c4f5397b233b4a05e85e10a01bcd0b6920"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.7.0/cargo-lambda-v1.7.0.x86_64-apple-darwin.tar.gz"
      sha256 "7b188fef3c9476958cdeca463d649165adcae782b8ef88c43b3d87c392a94cd1"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.7.0/cargo-lambda-v1.7.0.aarch64-unknown-linux-musl.tar.gz"
      sha256 "4f13f82823a2d06bc28d0c7f38dc398514a4279866ba8c1e543e30a24a762891"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.7.0/cargo-lambda-v1.7.0.x86_64-unknown-linux-musl.tar.gz"
      sha256 "f5166a3f382056d819b90974a97c71db7f5bf84c5078edc94f79b143886cdf90"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
