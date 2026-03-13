class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.11/microclaw-0.1.11-aarch64-apple-darwin.tar.gz"
  sha256 "7f6c41b3c8638792d2b02025db8cd229ce9f0b911fdb02208b4e37ceea4700ad"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
