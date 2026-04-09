class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.39/microclaw-full-0.1.39-aarch64-apple-darwin.tar.gz"
      sha256 "d33b0be7c9ca1685ec67c4e4706afc24c444c13320f048777989075654189126"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.39/microclaw-full-0.1.39-x86_64-apple-darwin.tar.gz"
      sha256 "8c547e37f9d55316945805199772048881e3a1d10e63c0b00849af6a4f8f4c0d"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
