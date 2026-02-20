class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.88/microclaw-0.0.88-aarch64-apple-darwin.tar.gz"
  sha256 "04344e29e9b7400c68757da724efbf326a7d26d3d86272fed0a7c79a5c662d22"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
