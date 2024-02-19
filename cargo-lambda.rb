class CargoLambda < Formula
  desc "Cargo Lambda is a Cargo subcommand to help you work with AWS Lambda."
  homepage "https://www.cargo-lambda.info"
  head "https://github.com/cargo-lambda/cargo-lambda.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.1.0/cargo-lambda-v1.1.0.aarch64-apple-darwin.tar.gz"
      sha256 "84482b938720ee414ac928ddddfadedbd324ee2b51a86fc3d9e2e5e8e97be46b"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.1.0/cargo-lambda-v1.1.0.x86_64-apple-darwin.tar.gz"
      sha256 "23a694f674afd9cf73b69cd80298ca6aa170ecff9eb359a2318345f9139e22b3"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.1.0/cargo-lambda-v1.1.0.aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e31107167c28e3e16fb7a93eba5798a36e81157513136a5604654c017ffc0e2"
    else
      url "https://github.com/cargo-lambda/cargo-lambda/releases/download/v1.1.0/cargo-lambda-v1.1.0.x86_64-unknown-linux-musl.tar.gz"
      sha256 "329024740eb33f10a0d0cc795956d609081e557901803cdaf2963473f0b9dad7"
    end
  end

  depends_on "zig"

  def install
    bin.install "cargo-lambda"
  end
end
