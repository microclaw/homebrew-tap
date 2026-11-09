class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.27.1/microclaw-0.27.1-aarch64-apple-darwin.tar.gz"
      sha256 "1e6fd98e587cd25bbda8810c2e9ac4d18043551cd6767359a97557f74c76d8b0"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.27.1/microclaw-0.27.1-x86_64-apple-darwin.tar.gz"
      sha256 "4bfd74e2b7f57309060bf59fbf6f1e799b5297f1f95f32380343f1d910b28a78"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
