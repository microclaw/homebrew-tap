class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.10.1/microclaw-full-0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "40f447959da766b5eccc40407ef55aedc016b7d895126f37842d577894db4624"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.10.1/microclaw-full-0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "3d144a3d90557302044b67dafb95a9d44e780d21709d735aa8cd8382524e4731"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
