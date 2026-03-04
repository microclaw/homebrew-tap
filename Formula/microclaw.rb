class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.150/microclaw-0.0.150-aarch64-apple-darwin.tar.gz"
  sha256 "d43f12efbc01f068f3f4293a7455ab152f485fa98605bd574c8f7004e678c4b6"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
