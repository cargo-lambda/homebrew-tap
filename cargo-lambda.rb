class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.2.2/cargo-lambda-v1.2.2.aarch64-apple-darwin.tar.gz"
      sha256 "9547df6668d4c8260b727d56592f3b4a7155e83ded1061a39b1f63406fe5d48f"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.2.2/cargo-lambda-v1.2.2.x86_64-apple-darwin.tar.gz"
      sha256 "bb8484b3c84708fa44e14bd2673e2510632cc4e6342244dab848d75438861e36"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.2.2/cargo-lambda-v1.2.2.aarch64-unknown-linux-musl.tar.gz"
      sha256 "209fd775ed62b7721029e684bbbc9151f5d3131b43f5f42ab2b57492022befb5"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.2.2/cargo-lambda-v1.2.2.x86_64-unknown-linux-musl.tar.gz"
      sha256 "60ef3fd3c217f9fec6c0b9217d89510455e66a56fb1150476e5ed6d90ac6157a"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
