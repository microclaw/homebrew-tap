class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.11.1/microclaw-0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "0c8a77d69d65efdfe7a2795eb37e82925dc777b037e2fff10a5eaab8e32e5184"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.11.1/microclaw-0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "5c787152a8c501febb6e897be8818cec91cc21adc9c8089bc7957fbd883c1b5f"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
