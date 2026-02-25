class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.117/microclaw-0.0.117-aarch64-apple-darwin.tar.gz"
  sha256 "03128ecccb3dfa6bfab04b0f1fca3f74bd3346596e6a74125a0f288a1525279c"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
