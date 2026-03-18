class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.21/microclaw-0.1.21-aarch64-apple-darwin.tar.gz"
  sha256 "01b9b91a8e541d5d16bcfe1714f6fb84c7675f790369b4fe7a4738c3a2f17fdd"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
