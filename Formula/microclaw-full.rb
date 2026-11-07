class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.26.0/microclaw-full-0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "8ffa91968e67daec00bce1ee6255419f8b4a7620f6f6d9d1b9f6c86b52f186a8"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.26.0/microclaw-full-0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "a346ab4c197982efe22c9b7d8c6e31727126927a05caffe7ed5809d9b21eee97"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
