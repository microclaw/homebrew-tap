class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.1/microclaw-0.1.1-aarch64-apple-darwin.tar.gz"
  sha256 "d6b1123c53e62e8d46aeb24208c4e6a119b4d189b6e3a19e88e95beb88ba2c8f"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
