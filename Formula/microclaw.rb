class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.102/microclaw-0.0.102-aarch64-apple-darwin.tar.gz"
  sha256 "f05f4237a0a8f533c768328789773dfbedf6b081e20b87dd6196f5b2359d2d55"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
