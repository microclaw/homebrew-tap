class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.30.0/microclaw-0.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "6a1ce24800fe85718a6e605c94390629c5230a95ba923040fef763d872509b9b"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.30.0/microclaw-0.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "b4b55085e34c1da0e350b5fc9531e2bb160949c9a817f474ec1914524fd0d229"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
