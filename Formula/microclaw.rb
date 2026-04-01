class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.33/microclaw-0.1.33-aarch64-apple-darwin.tar.gz"
      sha256 "29b436928935440afdeb5134649ce2872258d41aacca0891d17c12594f931816"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.33/microclaw-0.1.33-x86_64-apple-darwin.tar.gz"
      sha256 "49984dcd09d022e85c86b62e44f957674c1f53a2a5f7aa196ca37c9b02dcadbe"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
