class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.53/microclaw-0.1.53-aarch64-apple-darwin.tar.gz"
      sha256 "e0f7f6f2b7a328e98068bb6917427383fbd6d109c5878cc9a9f619fae64fd67f"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.53/microclaw-0.1.53-x86_64-apple-darwin.tar.gz"
      sha256 "3a7c0666b45f9b8f143f38e3d165837034e0862449d8a26c369156f743a4e785"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
