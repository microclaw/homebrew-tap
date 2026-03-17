class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.18/microclaw-0.1.18-aarch64-apple-darwin.tar.gz"
  sha256 "1adf87df6f32c6e083ade988b52a9bf009e38b012cf43d4422c4deeb0c1a8708"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
