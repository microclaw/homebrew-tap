class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.136/microclaw-0.0.136-aarch64-apple-darwin.tar.gz"
  sha256 "0c60a0a73c31778ba5e0500f11bf6f521f2ce457dfaa0bbafb24fc07b81fa819"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
