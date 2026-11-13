class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.31.0/microclaw-0.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "c486e05c6d83f22d649a506199957676e284ccc6984f6e13ea83c8e8c8a00b02"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.31.0/microclaw-0.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "db616a2782c81a7ef6dfea570cb875bd3f2b981dd8cf605c168230634a814717"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
