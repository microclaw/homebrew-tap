class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.6/microclaw-full-0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "45accdf89a290ba2d30f574e68328cf825964c3ce8ccfb5a809396ef8522a59d"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.6/microclaw-full-0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "7f2129d3566f7316b1b9e602fd96587e94f78fe7fd16de6716730aef65fb6582"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
