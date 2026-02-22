class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.99/microclaw-0.0.99-aarch64-apple-darwin.tar.gz"
  sha256 "afba81d6b3ced0e863fc5a2c618ddf32e9c758c5f608103110b31a8ccd321470"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
