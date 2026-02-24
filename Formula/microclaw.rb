class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.112/microclaw-0.0.112-aarch64-apple-darwin.tar.gz"
  sha256 "7dba918c3080d31d603e4c01efa8b2ebe958e1ef5ce5195cfa2ea77f8e9715b1"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
