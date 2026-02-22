class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.97/microclaw-0.0.97-aarch64-apple-darwin.tar.gz"
  sha256 "b7595d2908caf89b8cf8a4ac20a50a2d739d535a4dee9fad689529512f959953"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
