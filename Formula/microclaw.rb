class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.11.0/microclaw-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "25cee502b1f8877cd30e2680cb3fae5e1849c9918ca9748df44f13c4848a30be"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.11.0/microclaw-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "b08ac6e1e6768d466f5fb9eeae9d78ad8d1b5ddef5eb68665487679a40bdc729"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
