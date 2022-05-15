class CargoLambda < Formula
  desc "cargo-lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://github.com/cargo-lambda/cargo-lambda"

  if OS.mac?
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.8.0/cargo-lambda-v0.8.0-apple-darwin.tar.gz"
    sha256 "823404b612c65d6a22539aa4cda147f24b392b698eaf1dd40f93f07d4a768da3"
  else
    url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v0.8.0/cargo-lambda-v0.8.0-i686-unknown-linux-musl.tar.gz"
    sha256 "15fe7d5ce2ac55f40438ed200f2d9ce87909b69d6c472cda321e201330d42717"
  end
  license "MIT"

  def install
    bin.install "cargo-lambda"
  end
end
