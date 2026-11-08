class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.27.0/microclaw-full-0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "135cc39eec7dcf883adef36093d03474ede4f625742f44b2c88c1556a0be7705"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.27.0/microclaw-full-0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "969a691ab3c71c292c09d3cfab83dfadc341e070db3a9880e1879bd629b8dcbd"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
