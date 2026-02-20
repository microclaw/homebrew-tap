class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.90/microclaw-0.0.90-aarch64-apple-darwin.tar.gz"
  sha256 "0adb655fc03174218843188f42e8f89e29d663e5a6aba66f2cacdcc4970ccf5f"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
