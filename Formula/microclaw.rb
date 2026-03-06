class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.159/microclaw-0.0.159-aarch64-apple-darwin.tar.gz"
  sha256 "dae310c9bd64aaedc2275ad3fd9f9bd2f1381f21b20d41d975be53c1529ed0c2"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
