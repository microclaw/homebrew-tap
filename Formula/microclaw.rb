class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.35/microclaw-0.1.35-aarch64-apple-darwin.tar.gz"
      sha256 "39ff836cf0a03bafc571287e49a7731447ae5a00d0185e9dabe31c0cb3f952d1"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.35/microclaw-0.1.35-x86_64-apple-darwin.tar.gz"
      sha256 "cf62fb1e11926470638a081718d81a56b70393c82e20133ead66eb1b6796121e"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
