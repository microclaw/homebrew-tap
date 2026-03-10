class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.5/microclaw-0.1.5-aarch64-apple-darwin.tar.gz"
  sha256 "e01bbc231477cbbe94466a8f643a7611c6d6bc232bd04b1cdbd8168c0c8a2351"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
