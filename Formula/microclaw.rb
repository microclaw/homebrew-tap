class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.16/microclaw-0.1.16-aarch64-apple-darwin.tar.gz"
  sha256 "aed2f869ead429162c118bb356522d62b66e058a74204051349468022956935b"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
