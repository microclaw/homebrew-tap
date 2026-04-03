class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.38/microclaw-full-0.1.38-aarch64-apple-darwin.tar.gz"
      sha256 "714867079702316f3092c7d02e52144da2c607c818afe29a4dc4e355b1bb93f1"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.38/microclaw-full-0.1.38-x86_64-apple-darwin.tar.gz"
      sha256 "54fab8d54fac76337e04e7358daa2d51069978aaa29d90f8f55997aaf80cdeee"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
