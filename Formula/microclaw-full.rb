class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.7.0/microclaw-full-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "81a7d2bce439ed42b54ee2e1b475aa27e4def3aa85149c6f3eeee0927a07b1a1"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.7.0/microclaw-full-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "cf1fdeda6b5bb90548e7eb44701ae90440fc40b62d399bf6371e45b68b175d73"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
