class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.10/microclaw-0.1.10-aarch64-apple-darwin.tar.gz"
  sha256 "90daf87cfd5a78cf9bda16403d12bc48541e7fe989b6b4d959c0d6409bb49557"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
