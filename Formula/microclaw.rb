class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.80/microclaw-0.0.80-aarch64-apple-darwin.tar.gz"
  sha256 "330fc09730ba746fca057d6af2e1acc8e1dcfc35204d97b33c363f6143c523ac"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
