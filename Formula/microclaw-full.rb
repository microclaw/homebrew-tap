class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.10.0/microclaw-full-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "0ace9816766028e4c55e24ce84c9eb14bd6ecbd1aad35e7d2d65ac6a9ec70f35"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.10.0/microclaw-full-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "b17033b71055743a651355da0f4608335ee2c7e3675ae1a31a2d417912c547ec"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
