class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.119/microclaw-0.0.119-aarch64-apple-darwin.tar.gz"
  sha256 "678cf5bf6d50707adb0b4e62d1a409581e2a84f4ea3bee16e9bcc9e26f19448e"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
