class MicroclawFull < Formula
  desc "Agentic AI assistant (full variant with Matrix channel + MCP support)"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.57/microclaw-full-0.1.57-aarch64-apple-darwin.tar.gz"
      sha256 "b8a23bb314d9400257bfb5f0bc2923af96d33568859cb62598d9e319af4e3c0c"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.57/microclaw-full-0.1.57-x86_64-apple-darwin.tar.gz"
      sha256 "684aa3b373937d236fedea3df5e395fc81b0a4d324cd97fc9707bde7d05571a0"
    end
  end

  def install
    bin.install "microclaw-full" => "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
