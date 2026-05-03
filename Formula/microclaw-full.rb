class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.56/microclaw-full-0.1.56-aarch64-apple-darwin.tar.gz"
      sha256 "5d7d379b41ac5577a0ddd9fb6be81f9c6bc986bff686393d0ccc49c494a84a26"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.56/microclaw-full-0.1.56-x86_64-apple-darwin.tar.gz"
      sha256 "ed23c22b915f95cba9afdf777328aeaf004e57bbe6aa8faf732663c51a476e32"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
