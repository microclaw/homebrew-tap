class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.36/microclaw-full-0.1.36-aarch64-apple-darwin.tar.gz"
      sha256 "77e29248765abfe9cf36234c9d798c2de47cdecfe28b257bc0b473dd81f0e3b6"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.36/microclaw-full-0.1.36-x86_64-apple-darwin.tar.gz"
      sha256 "f45313aa4d1fed2d0fd94cb6b76ee42dcbf4e0792c4242c0f681475421a046a2"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
