class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  url "https://github.com/microclaw/microclaw/releases/download/v0.0.153/microclaw-0.0.153-aarch64-apple-darwin.tar.gz"
  sha256 "b706cf7a3629e126b1b5b133f2535f61f44227eacb75da683ceb5893bbe5d678"
  license "MIT"

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
