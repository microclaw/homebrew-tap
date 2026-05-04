class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.57/microclaw-0.1.57-aarch64-apple-darwin.tar.gz"
      sha256 "58c71a982864b84817c2ba4c0bbe21313934f6dd613237f73520ffacd9baaf95"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.57/microclaw-0.1.57-x86_64-apple-darwin.tar.gz"
      sha256 "987d1ba78d307fa0a423ce1d3f43303b9c69cf4982e1794b48623a678e4ba5d4"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
