class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.91/microclaw-0.0.91-aarch64-apple-darwin.tar.gz"
  sha256 "00395e7882dc7b4430e1d936644acaf63c22e4d547568d2b31aecf6d4a1662a9"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
