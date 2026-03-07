class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.160/microclaw-0.0.160-aarch64-apple-darwin.tar.gz"
  sha256 "28641d3733ec9a45db13aa298ab8e3ea5fe715a974fec93b7f6554ec271cd540"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
