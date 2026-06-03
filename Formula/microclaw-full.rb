class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.2/microclaw-full-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "d844441d61a42e4e6ca51af4a15277b268cf1f32cb68b469cff6e550c9aa085c"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.2/microclaw-full-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "b44290a0c278b51132f48fbdf8ad99c9c4a6d9d155d0ea274bfe54da68913d2e"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
