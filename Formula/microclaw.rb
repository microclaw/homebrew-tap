class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.23/microclaw-0.1.23-aarch64-apple-darwin.tar.gz"
  sha256 "a2cf92a17c956c9f23d239576faa49ac7dc7ed3004a0f5f779537c3b4bfc740f"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
