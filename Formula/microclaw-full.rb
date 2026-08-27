class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.5.2/microclaw-full-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "ead5a5c67e77c94fbc8961f526e50abb221332c816c7f5b6e56ec5ad027330b3"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.5.2/microclaw-full-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "c224505c7ff6298f92128c37218d2de553ed72ee63f3f38c309345e841be340c"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
