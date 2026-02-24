class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.115/microclaw-0.0.115-aarch64-apple-darwin.tar.gz"
  sha256 "f587f87eb2936aa3e1cb0e2296e6f7381892cb18b7756ebb3084a4d56eb4ae6c"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
