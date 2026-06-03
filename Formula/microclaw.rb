class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.2/microclaw-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "735762bf67de377b29e8c2028d3b4f65460ee0b6a13bf4dfc96e0df6b082a53f"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.2/microclaw-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "968f4fb6c38515d6a6208242486cd616621688e21e0e2e466687855f7fbb3735"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
