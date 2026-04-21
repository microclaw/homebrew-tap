class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.52/microclaw-full-0.1.52-aarch64-apple-darwin.tar.gz"
      sha256 "ef55b894dd1e2ec2c5fa01f118ebe438f71d200375f9608bac2b2358c1275709"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.52/microclaw-full-0.1.52-x86_64-apple-darwin.tar.gz"
      sha256 "b94837a61195e3f4340a40dfeff69db4b96a185fcbecf2c390321e1ee532386f"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
