class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.1/microclaw-full-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "9f42923c9658c7f9d9a959828285b40a4406477ad03e3d9391790ae6ff947457"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.1/microclaw-full-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "c91780cf8e3fe10bc2aecc7d7c86a2fa3bbc9ef2ce87b444f3cab04abaa8a740"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
