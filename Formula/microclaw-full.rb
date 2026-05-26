class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.59/microclaw-full-0.1.59-aarch64-apple-darwin.tar.gz"
      sha256 "e02bd12710df6481d547dee32adb195469da28c61b7336ac1a4a5eb690ded7ff"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.59/microclaw-full-0.1.59-x86_64-apple-darwin.tar.gz"
      sha256 "5304375825620d69e2a6235510ba37290539aa86f859717c844e8eafb68987bd"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
