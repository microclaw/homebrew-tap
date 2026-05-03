class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.56/microclaw-0.1.56-aarch64-apple-darwin.tar.gz"
      sha256 "ce3aeba287b45751a6363af8295442b6e335d2d4e5ba88c594921ef72e54c58d"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.56/microclaw-0.1.56-x86_64-apple-darwin.tar.gz"
      sha256 "aac77ac897cb94ae870ee166fd864b1b0bd9bfc98c9ca731a0be8f20314612ea"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
