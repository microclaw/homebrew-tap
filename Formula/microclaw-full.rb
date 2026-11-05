class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.23.1/microclaw-full-0.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "7391ff149c4450a12579ff14034c1a720140b56fd74fa73e9701cb512706083a"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.23.1/microclaw-full-0.23.1-x86_64-apple-darwin.tar.gz"
      sha256 "dd5e62c6418e040ef0532425a978abaaf1ddefcefb73ff693de87f05a7f51651"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
