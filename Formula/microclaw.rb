class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.135/microclaw-0.0.135-aarch64-apple-darwin.tar.gz"
  sha256 "457ced5442fb6b2bc35e2c3d3bf65b9a67ebbfa6fbc08464740d8e1b3746617a"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
