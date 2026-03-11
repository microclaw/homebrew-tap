class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.9/microclaw-0.1.9-aarch64-apple-darwin.tar.gz"
  sha256 "58e84654f675b2fcab63bf22f46132df4159be11f786dc735749fa08b52b947b"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
