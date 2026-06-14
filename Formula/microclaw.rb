class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.5/microclaw-0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "bc58de158ddc549dafa00c3618098b134ef11a939284230def17464f263ea9c3"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.5/microclaw-0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "fb20d92546d8157d42de22cfc71769b4b6ba689cbad18f64a95f3fbda0805b06"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
