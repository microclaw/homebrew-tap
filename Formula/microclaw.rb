class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.29.1/microclaw-0.29.1-aarch64-apple-darwin.tar.gz"
      sha256 "d732d22536f7928a726b8d1639dc06a290df918f9295a3b60f605b9ec210c9ba"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.29.1/microclaw-0.29.1-x86_64-apple-darwin.tar.gz"
      sha256 "89d91b64c8366d6dfe420ec3fe5a7e036cb25175658f349a718f73b2f10456a7"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
