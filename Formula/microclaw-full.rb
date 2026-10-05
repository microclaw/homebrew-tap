class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.8.0/microclaw-full-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "00fe002051a42673ce2cca336970507c5eeeee9e79bd66a099d0a38f4911a4d1"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.8.0/microclaw-full-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "997d024241fe8d4aa4e643a165eada21d08de52f304a8582a0bb648d7395c3d3"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
