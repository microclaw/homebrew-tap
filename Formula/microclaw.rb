class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.92/microclaw-0.0.92-aarch64-apple-darwin.tar.gz"
  sha256 "eadcc4c1fa3efa82b6712b472409a965c2f89318896d3dc6a924d1cbf6d274a5"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
