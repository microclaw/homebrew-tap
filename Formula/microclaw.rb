class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.109/microclaw-0.0.109-aarch64-apple-darwin.tar.gz"
  sha256 "54e168b203132d7bd509cf989ad2532121aeaa34cb1a44b4320dbb26603567b4"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
