class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.13/microclaw-0.1.13-aarch64-apple-darwin.tar.gz"
  sha256 "a583b0a432eebbc7f245dc505ca88ea9f8ae554119776222ec236cb7036f4c95"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
