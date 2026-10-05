class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.8.0/microclaw-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "b139880d893b517a9e891ec72a5a7edc897de71313c1bbc8b5f6cd97a1b9a8ac"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.8.0/microclaw-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "419778fd625b892b876cf8c0436b7483eabee6bd0e743acb8eacd97245a56b57"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
