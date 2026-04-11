class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.50/microclaw-full-0.1.50-aarch64-apple-darwin.tar.gz"
      sha256 "7061026f3cde48f3c5bb81b5ae82bf68fec7e4e1d8e018a2c56c75c87028106c"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.50/microclaw-full-0.1.50-x86_64-apple-darwin.tar.gz"
      sha256 "2701d90fe9e709a7672fec43151bd22f16d88d73f96444e06a7dde3da5eebad0"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
