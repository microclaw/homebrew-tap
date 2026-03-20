class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.1.22/microclaw-0.1.22-aarch64-apple-darwin.tar.gz"
  sha256 "6107ca39cb6a25e7e77b9b7e3969ca4fc774dfd729d5cd109f90286e9d59007f"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
