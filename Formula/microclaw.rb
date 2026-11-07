class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.26.0/microclaw-0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "85ac627b1380f2dc78431f0bf61e2b6fd464becf0c01073a0cdafcae86e6a6c7"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.26.0/microclaw-0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "2fd70e1ff814c68ab396879828b7eb4de6209d0edd71f104dae385f4d7bd4f5d"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
