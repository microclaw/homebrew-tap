class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.87/microclaw-0.0.87-aarch64-apple-darwin.tar.gz"
  sha256 "fe104d682fb5956226b4a5334e50ed4d7ab3b5e02fd36afac144bd7617012199"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
