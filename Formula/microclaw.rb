class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.89/microclaw-0.0.89-aarch64-apple-darwin.tar.gz"
  sha256 "a0401b58d3911200f528e6b19b0ff13671a58a22cbcb7df64a0e58386529da5d"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
