class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.37/microclaw-full-0.1.37-aarch64-apple-darwin.tar.gz"
      sha256 "f9023807ea90d0febfea14f3a9a6fade2fd50eff1dbadd270a495e5efd1d5192"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.37/microclaw-full-0.1.37-x86_64-apple-darwin.tar.gz"
      sha256 "9582f36493e2267b86c52019b5572fb15319a19d1308c9121c91f70825d775cf"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
