class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.125/microclaw-0.0.125-aarch64-apple-darwin.tar.gz"
  sha256 "b3a97967826da0a4a34b7d98b90997ddc22224797a35553f19d1adae8902a6c5"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
