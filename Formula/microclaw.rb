class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.9.0/microclaw-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "ae02d3027141f2d8559adfd87a561111588a23bb0c01d3d3a89a947db811eb9d"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.9.0/microclaw-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "590be497e37374d2009f2dbe7986c69aeb3e952cc6714d7b089fe505492f0981"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
