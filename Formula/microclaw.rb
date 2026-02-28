class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.126/microclaw-0.0.126-aarch64-apple-darwin.tar.gz"
  sha256 "1225c894513746a1d88b150496c78ab2f322d2bcf19bd9a25d4595dcde229f46"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
