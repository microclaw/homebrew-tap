class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.53/microclaw-full-0.1.53-aarch64-apple-darwin.tar.gz"
      sha256 "5445ad6722e6a229a9658975a92da5a8088d097563f77192b7dcacd5216c5de2"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.53/microclaw-full-0.1.53-x86_64-apple-darwin.tar.gz"
      sha256 "f1a4597acf2d34ccffb8124741387de7bb61dce3765d1fbb7c8788ba91db5329"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
