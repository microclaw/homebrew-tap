class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.15/microclaw-0.1.15-aarch64-apple-darwin.tar.gz"
  sha256 "07a0489b813473308bb60ca4f5769b73bbacf376a4866c58888c7fd5aafeb8e0"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
