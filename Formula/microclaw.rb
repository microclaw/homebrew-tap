class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.163/microclaw-0.0.163-aarch64-apple-darwin.tar.gz"
  sha256 "10a08fe7e8fbba22ec80316ecccc0cb4619f2acc212daaa032a1b71138deff9e"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
