class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.11.0/microclaw-full-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "3f751179abe623e3c70c79a7992b712d3cff51676790dfe9cb16b0fa1a48823b"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.11.0/microclaw-full-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "87a7f962e55091eab12d35f6cfb22501b9e275fd8a76cef4330c1bb824ab4974"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
