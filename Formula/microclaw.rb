class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.22/microclaw-0.1.22-aarch64-apple-darwin.tar.gz"
  sha256 "5e130998a7f988c22b28248d132999ffc8944c1d0b534e41b74f21c119da3eae"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
