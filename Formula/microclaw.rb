class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.3.1/microclaw-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "843786fe039c41eedb9659f3a88e241a2c6bb3350eabb64a91644c44885d53f2"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.3.1/microclaw-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "fb33a4abcec94193255309e95832bd7cf7c979e8f8062ec7408d188a7f37fee9"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
