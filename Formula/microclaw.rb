class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.17/microclaw-0.1.17-aarch64-apple-darwin.tar.gz"
  sha256 "71bb162d1f8e2d4bc2759c2c3306c8df925bbed6db525f5f14e13bb435b4fd57"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
