class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.132/microclaw-0.0.132-aarch64-apple-darwin.tar.gz"
  sha256 "51ae38d6b480d5231b66e8eb5d46eb429a699fda9e7158d8321a7d54b7403b5c"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
