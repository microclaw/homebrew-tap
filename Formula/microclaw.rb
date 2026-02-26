class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.118/microclaw-0.0.118-aarch64-apple-darwin.tar.gz"
  sha256 "47ef0a09db60dee7d920068456945eccb3ed553fdd82f596296b2b936b4e0156"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
