class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.59/microclaw-0.1.59-aarch64-apple-darwin.tar.gz"
      sha256 "a1e84c12c3bb2453bb7cf1c6b7a9069b8fda0d0cf6b87327db7675e66fd80b49"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.59/microclaw-0.1.59-x86_64-apple-darwin.tar.gz"
      sha256 "30f287ef1d1015ecfb57364cceae34554c3ee1aac24e594152fb47043a603c5d"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
