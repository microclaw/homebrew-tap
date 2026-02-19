class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.82/microclaw-0.0.82-aarch64-apple-darwin.tar.gz"
  sha256 "7a4fd46f828eca96d17060fa4d103704e02f8ef4ddd44f10a560c1c4fbb370fc"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
