class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.50/microclaw-0.1.50-aarch64-apple-darwin.tar.gz"
      sha256 "dafdcb35a0ff7cadb8f24915ef29c3007c725285582169e6922b22722a4dc09e"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.50/microclaw-0.1.50-x86_64-apple-darwin.tar.gz"
      sha256 "3feaabaed444c5cdee2fbccdd8849ff320dff98234b3ad04521723afd2f0bc01"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
