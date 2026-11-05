class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.23.0/microclaw-full-0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "82c5e6bf284ac4d2632d9d8d2991303a3c61658c5f6c679b42ae3dbe6bea94e8"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.23.0/microclaw-full-0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "21617d2c365acee8277facf8ad8643e7a4ee04a6aa9bc77bf49f8058f1afb2d1"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
