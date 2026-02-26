class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.120/microclaw-0.0.120-aarch64-apple-darwin.tar.gz"
  sha256 "c382cb0980edf9e2acc615a152be6b8051dbb9ed2a5c97c13cdaaeae068b51e8"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
