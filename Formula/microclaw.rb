class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.137/microclaw-0.0.137-aarch64-apple-darwin.tar.gz"
  sha256 "b007585ada44fcdb97edd15ae5a29ff683ebc53d0d6c89e6d8c34f0eb6d0a002"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
