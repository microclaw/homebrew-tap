class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.27.1/microclaw-full-0.27.1-aarch64-apple-darwin.tar.gz"
      sha256 "da51c3132f4af4db76ddaae4db11953b48e14bd595fb81c9abdf07bb4fd077de"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.27.1/microclaw-full-0.27.1-x86_64-apple-darwin.tar.gz"
      sha256 "3ba02c25c58ad6fb264339ad3751d170001693b9bd7d515d2f274828df465d4e"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
