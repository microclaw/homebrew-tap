class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.12/microclaw-0.1.12-aarch64-apple-darwin.tar.gz"
  sha256 "cd3985b830d518ed6cdf7fd20a64e23aca72898c2acab3960389ba0c71fb9ad7"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
