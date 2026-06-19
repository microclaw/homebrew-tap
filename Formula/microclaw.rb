class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.6/microclaw-0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "1563520250df1e21ca0c56607360e2f6e96ac50c2527a1fda99e7692cbcffd54"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.6/microclaw-0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "b43e0fc935c7ec0da8027d9de1e35bcc419d775348d1adb1cfb9e4a99e525d83"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
