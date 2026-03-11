class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.8/microclaw-0.1.8-aarch64-apple-darwin.tar.gz"
  sha256 "56899ccdb5d60025c3d6f13b64b9cf3eb9569e71fb6a4421f136e6879fb23a07"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
