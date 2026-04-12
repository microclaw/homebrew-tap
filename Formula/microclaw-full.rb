class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.51/microclaw-full-0.1.51-aarch64-apple-darwin.tar.gz"
      sha256 "9586273586f6d1fc61f5a198bd36cc2defe12b6b071608e6c001c3c684bde031"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.51/microclaw-full-0.1.51-x86_64-apple-darwin.tar.gz"
      sha256 "863af8ee61c51f461a45966eca4997bf7eb1e8cc453bdc98f1852c4f9dbf0467"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
