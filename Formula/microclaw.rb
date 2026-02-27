class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.123/microclaw-0.0.123-aarch64-apple-darwin.tar.gz"
  sha256 "88930fb8016f12df756080b745285ed3ae37342d60f0cfe4f3c136f249b7795f"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
