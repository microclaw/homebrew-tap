class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.121/microclaw-0.0.121-aarch64-apple-darwin.tar.gz"
  sha256 "a635f8abd6e43744ea48e8916e7bbc86be39bf96def4414b773919fd033b6aec"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
