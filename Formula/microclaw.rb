class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.152/microclaw-0.0.152-aarch64-apple-darwin.tar.gz"
  sha256 "fd5aa906d8d9592576a171008e9782a74bcbf7fc9ed3b48ae1e981d45e07df14"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
