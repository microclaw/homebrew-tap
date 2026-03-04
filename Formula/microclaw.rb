class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.139/microclaw-0.0.139-aarch64-apple-darwin.tar.gz"
  sha256 "714df5784a508fd16c10ff11bccc938068a51f2940fca4d760ce6ba35e48b0e8"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
