class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.111/microclaw-0.0.111-aarch64-apple-darwin.tar.gz"
  sha256 "f9819362b8f6ce82baecdff0d660dda107e271bd04021ca558b698709b2e89de"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
