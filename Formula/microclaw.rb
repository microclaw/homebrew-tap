class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.25/microclaw-0.1.25-aarch64-apple-darwin.tar.gz"
  sha256 "d15ed5eab424eaef185618bb93b186cb75452cdf5759ea522e50defbdc12a587"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
