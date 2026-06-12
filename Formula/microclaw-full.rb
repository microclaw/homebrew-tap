class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.3/microclaw-full-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "bf8ee0bc2982ba9109264612ac4102482e424d0b21e25854ed7b05d9615fcae4"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.3/microclaw-full-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "b05d296fed15d205c011d5d1af7a96521abcc7eaa410c7ee0bf29c4dae9b32e5"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
