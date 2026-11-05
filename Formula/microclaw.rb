class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.23.0/microclaw-0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "d91760a66be2c5c3e947a8dc0e1f1027590bd937b129909a5ebdfeff49262311"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.23.0/microclaw-0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "3b49c9cc1215d99f43cf60007730dc22ed4e1948b6e41353bb69ec738f2b20e4"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
