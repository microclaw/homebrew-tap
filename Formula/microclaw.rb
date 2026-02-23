class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.108/microclaw-0.0.108-aarch64-apple-darwin.tar.gz"
  sha256 "7bf835569e762c705ad20e6c949e5e6df5924037380896acef76b12aacfb97b4"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
