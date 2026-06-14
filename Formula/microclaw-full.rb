class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.5/microclaw-full-0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "ff0a540d0721017b3b7e22838ad2d6696043d338eb23c23ee87f9295ea1cae5b"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.5/microclaw-full-0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "4986c33735f0d203725ea4671821274b0c346628acdbf0eae4f8be985df31a21"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
