class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.96/microclaw-0.0.96-aarch64-apple-darwin.tar.gz"
  sha256 "e49bab22df24f748fbef59d076a9d5f0e8175363b4059cc068b454cd165bec32"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
