class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.107/microclaw-0.0.107-aarch64-apple-darwin.tar.gz"
  sha256 "7b7f2a9cf33365bf45343c3e49015b012a8cb6c532981185ec5102e5c68971b4"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
