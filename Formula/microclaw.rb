class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.31/microclaw-0.1.31-aarch64-apple-darwin.tar.gz"
      sha256 "4d6e5c369ba35756b8bc37a6e90c08fca71577a9fe57e6c41c17c1678e81f2bd"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.31/microclaw-0.1.31-x86_64-apple-darwin.tar.gz"
      sha256 "844feeba03770ce3a833de0ac65a0439d2cf31f0830b53208f24fd53a9ca287f"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
