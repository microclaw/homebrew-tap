class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.151/microclaw-0.0.151-aarch64-apple-darwin.tar.gz"
  sha256 "213a1ca3a93188a64af5e60a67faa66057256cdf89cd6a9b83958f4862cfcf23"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
