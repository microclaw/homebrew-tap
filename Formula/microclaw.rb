class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.19/microclaw-0.1.19-aarch64-apple-darwin.tar.gz"
  sha256 "9a60682026194c89cea39e15c56ff5955c6e378c1c556eb10c8a377df3b62f16"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
