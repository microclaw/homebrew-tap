class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.5.2/microclaw-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "f4ac2cd56a19cd4504ca4a12c42e0d81258d822760c57868003f4ec2d236f8ec"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.5.2/microclaw-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "cc878deab4618221d0490127526f8ba93816cf7d1b3b52b5a0b8a3ba1109ccd2"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
