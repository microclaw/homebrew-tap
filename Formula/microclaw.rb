class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.38/microclaw-0.1.38-aarch64-apple-darwin.tar.gz"
      sha256 "2582a7c3cdd75756ba58bfccc5e4b43d9a4be2b7c674832d4adb1970c43a6ac2"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.38/microclaw-0.1.38-x86_64-apple-darwin.tar.gz"
      sha256 "833ed21ea58dba013317af232505d709cdf268109954294fcf69e8f4ab07afbf"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
