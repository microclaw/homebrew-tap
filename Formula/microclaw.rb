class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.85/microclaw-0.0.85-aarch64-apple-darwin.tar.gz"
  sha256 "fad851a79c80cbf1f907fc7a9478156684e6f8ebe8974447ca40552a4fd0d521"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
