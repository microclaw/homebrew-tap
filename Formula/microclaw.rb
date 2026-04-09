class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.39/microclaw-0.1.39-aarch64-apple-darwin.tar.gz"
      sha256 "c4cec6c95c697ceab41bcb785669acc25b9f88bfd7dbe3873f9ad39278fe70ab"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.39/microclaw-0.1.39-x86_64-apple-darwin.tar.gz"
      sha256 "97354c599a0d1897830f88d052ef051b404db236eb3117b3cf1ed23a3aa1a980"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
