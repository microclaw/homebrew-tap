class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.158/microclaw-0.0.158-aarch64-apple-darwin.tar.gz"
  sha256 "54fb0aa6a4658162eac4d75aeb5cbf2f04b168e5ac0e340f79a01389cd565c1b"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
