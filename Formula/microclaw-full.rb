class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.55/microclaw-full-0.1.55-aarch64-apple-darwin.tar.gz"
      sha256 "60be78c7c979be3d8cc6b5c13cf9e215d7a32986d7c120652a105f6637330a1c"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.55/microclaw-full-0.1.55-x86_64-apple-darwin.tar.gz"
      sha256 "176283f655dd95deb16b0009e98f1e03c12a44250fe94ab26c8b7930d52dff9b"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
