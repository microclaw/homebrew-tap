class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.161/microclaw-0.0.161-aarch64-apple-darwin.tar.gz"
  sha256 "822bac4535da3661385a6342bdf3788127ce8fe3f62bea43982d9246b73173ef"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
