class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.58/microclaw-0.1.58-aarch64-apple-darwin.tar.gz"
      sha256 "72936d5dec943b4b957b4132159eb321e4afdbcf692f9bb0864b1842a4e3ff29"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.58/microclaw-0.1.58-x86_64-apple-darwin.tar.gz"
      sha256 "fabc40b13f5e4509df9dd772e4a1c7f884dc33cbf61903af02f04c0829d0f4b7"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
