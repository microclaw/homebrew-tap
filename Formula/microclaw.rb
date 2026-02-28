class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.127/microclaw-0.0.127-aarch64-apple-darwin.tar.gz"
  sha256 "a03166b0c24237957aba9b80a0ad804957fb34c7875ee5f494ada4012dc1ea1f"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
