class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.86/microclaw-0.0.86-aarch64-apple-darwin.tar.gz"
  sha256 "a4f96e62839a44d1568d98d1fb562c12302fc643daf03ba9dff3b58649d7ab4b"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
