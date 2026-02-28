class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.128/microclaw-0.0.128-aarch64-apple-darwin.tar.gz"
  sha256 "6c4e5a17fa1c37d123d27459ad4b07b7c67767c95832a94835258ee9de146b79"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
