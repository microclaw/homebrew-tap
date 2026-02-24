class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.113/microclaw-0.0.113-aarch64-apple-darwin.tar.gz"
  sha256 "49b8ec1ae7eb235810d183189e61cf024b699788db1a0114bcc116382e93af77"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
