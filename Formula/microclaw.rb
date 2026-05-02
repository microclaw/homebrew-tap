class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.55/microclaw-0.1.55-aarch64-apple-darwin.tar.gz"
      sha256 "e9fde021ec9b22270aecea2469a07993497757fa16b580389b3ac3c83491332d"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.55/microclaw-0.1.55-x86_64-apple-darwin.tar.gz"
      sha256 "44ebbe2365430bd02d90d643747d5f9db8cfda2e1d53f3542c73baf776174979"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
