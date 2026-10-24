class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.10.1/microclaw-0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "168f38ce0f53730e06dba313cfae6c21c6a89253a8549912b9e391c4668ff3a1"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.10.1/microclaw-0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "49b73fcc9277318418e3e798aa60dece60b56420c7f2000b5786908e120d05d5"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
