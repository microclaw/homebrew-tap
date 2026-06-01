class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.1/microclaw-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "756cb33345bbdc98e1e7a6ace14e5649d62fddd4329f3974ef9d50fc49086e99"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.1/microclaw-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "440563742ad8b45f7094e3a92d0976ea0667bcdc82ab98d366db53a7f7f730f4"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
