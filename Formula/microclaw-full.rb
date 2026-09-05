class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.6.1/microclaw-full-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "fcec1596bc68ed28647815d9e8ac797636f66852d8d5322516c8d3ce68347556"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.6.1/microclaw-full-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "f8896b56263cf0c68fe0ad373aaa73b65e57613b4670536c1cc5345df6d9ccf5"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
