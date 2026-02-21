class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.95/microclaw-0.0.95-aarch64-apple-darwin.tar.gz"
  sha256 "5f632e8f664585cc51287e104803a8a7e332475f6155b00486a3de17a4fc608b"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
