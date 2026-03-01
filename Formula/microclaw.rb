class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.130/microclaw-0.0.130-aarch64-apple-darwin.tar.gz"
  sha256 "f073453b7fbe46f4da28dbd4f30afe92122cb0a76dcd835ed6e2f9adf9570748"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
