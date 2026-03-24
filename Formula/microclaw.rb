class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.28/microclaw-0.1.28-aarch64-apple-darwin.tar.gz"
      sha256 "894eee78c440066a71fa19aa8c931887b7a1a44c90dbb497b5bfd5b67b6c4f4b"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.28/microclaw-0.1.28-x86_64-apple-darwin.tar.gz"
      sha256 "166dbf88673dd4ba2baf27d98f77117f7c303ed901ee68b7c00fdc7f58ed96ec"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
