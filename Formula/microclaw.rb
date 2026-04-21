class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.52/microclaw-0.1.52-aarch64-apple-darwin.tar.gz"
      sha256 "1e15d58bfd98755a2103916abe4c68632bc90985cd4e734e737a7e958bbe1db8"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.52/microclaw-0.1.52-x86_64-apple-darwin.tar.gz"
      sha256 "f98caa06b88c060f7c0df290538d4b86cba8015cc1be8593b2212cedffb02b6e"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
