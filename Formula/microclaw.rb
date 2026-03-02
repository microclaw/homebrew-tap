class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.133/microclaw-0.0.133-aarch64-apple-darwin.tar.gz"
  sha256 "a9dd409811882050e65371c76867ca1cbfbafd74d8fc72829c1ccca568dfb432"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
