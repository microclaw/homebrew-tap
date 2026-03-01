class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.129/microclaw-0.0.129-aarch64-apple-darwin.tar.gz"
  sha256 "cbb3a53335893736e5616dcb32d47a36d9cf88ca57c82d4592c3023965fb791a"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
