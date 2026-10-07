class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.9.0/microclaw-full-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "305d1b1b817be90befd2def39af3e70fa631e8bc6f77b5628b3d46be84b411e8"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.9.0/microclaw-full-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "aa0fe93eab38b7d3cae6ad255182494e4efefd4eb1503dfb2a87740d855bfd52"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
