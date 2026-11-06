class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.25.0/microclaw-full-0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "b88fd3d0aafa58a75f8477a78e485238ed0664eb06cdeca371bda004faa7467d"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.25.0/microclaw-full-0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "6fa25af5c0438b8dd23390fddb415ac8f85597c9924fbb473b1cc98e0c925da6"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
