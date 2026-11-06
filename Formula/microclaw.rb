class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.25.0/microclaw-0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "9be5aebcd0734d4aad15fdd3ad1ad08ac5f3b1e880f5510db39f7599a00129b1"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.25.0/microclaw-0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "6213a6059712a62bf91b73ff93e0685c19ebf32c81b033a1f87f0d1c4f43268f"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
