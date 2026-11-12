class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.30.2/microclaw-0.30.2-aarch64-apple-darwin.tar.gz"
      sha256 "8123db123baf80d57f0a0dfc32ead46315d4add3b97394a8123cb13a4a5b6931"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.30.2/microclaw-0.30.2-x86_64-apple-darwin.tar.gz"
      sha256 "cc1abaaca09263b87aa72829fbd91ceb9b4eac05725b3a0cc407b2d92ad0f78b"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
