class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.2/microclaw-0.1.2-aarch64-apple-darwin.tar.gz"
  sha256 "7561c2773d8b53afa9f409b35fa8512eb7b1bd51e9bed5f546c0dacd6f984bb9"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
