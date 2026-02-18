class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.79/microclaw-0.0.79-aarch64-apple-darwin.tar.gz"
  sha256 "289758943763990322c256ed531ea6a1f15ff667667be08cc458f0676cc1bfa1"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
