class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.3/microclaw-0.1.3-aarch64-apple-darwin.tar.gz"
  sha256 "c8d9cf327b5a65ea3629938215e6e4182439b493ccf8f9c925bffcd55f031916"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
