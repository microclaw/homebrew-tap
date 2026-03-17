class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.20/microclaw-0.1.20-aarch64-apple-darwin.tar.gz"
  sha256 "3e85a5b22d0b8fbb558ed5bc872dc590f16c6cec6718d810e07b11404e3e0a67"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
