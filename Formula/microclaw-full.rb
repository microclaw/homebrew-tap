class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.58/microclaw-full-0.1.58-aarch64-apple-darwin.tar.gz"
      sha256 "bbab10bb7d8b3b463368d3303e4057d448a24e7b97d9aa8a7806b80c1afc35b8"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.58/microclaw-full-0.1.58-x86_64-apple-darwin.tar.gz"
      sha256 "051ac313d5d77c7fab96cc21693925d03e2702b0e789dafce41f6f6f13cd8bee"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
