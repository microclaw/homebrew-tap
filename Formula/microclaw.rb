class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.83/microclaw-0.0.83-aarch64-apple-darwin.tar.gz"
  sha256 "d36e847c09ebe14b3c96ae0b8fbfce57af9322db82c1aef3fbf8151969e7c858"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
