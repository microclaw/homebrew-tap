class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.27.0/microclaw-0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "00f598227caee91f2491af00c756f1dbebdba2522b5c5fbaea9942dd8cab4154"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.27.0/microclaw-0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "d3aedabbc5e9f251a1315534d1b8d49bb2b0b6a74471209273fc7d0848e8ed90"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
