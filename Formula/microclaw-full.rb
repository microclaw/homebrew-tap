class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.11.1/microclaw-full-0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "c3421a064f88d810b05fb903787a978ae9cbd865fadc232b65c1fbdc282b8fba"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.11.1/microclaw-full-0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "9b0c9cfd74d3b4518fd8358c4cb1b69d5ad38acc94676af24c577f59863e6048"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
