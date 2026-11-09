class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.28.0/microclaw-0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "c80b561c882ecffd4c8eccf74df7bad75e7922f690842dfdd863ec4e0073dd83"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.28.0/microclaw-0.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "c1811dbf06f4109dc4a3107fa47dc35ef48e2cb348e7c50c33c2736673ead19f"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
