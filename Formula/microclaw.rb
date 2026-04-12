class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.51/microclaw-0.1.51-aarch64-apple-darwin.tar.gz"
      sha256 "a6590ba6cccfffa1f7f26503dd491c3455163469b0fdf5bc68b5a52ecb3d797e"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.51/microclaw-0.1.51-x86_64-apple-darwin.tar.gz"
      sha256 "e6b9b9e0ae77ad30f1603d736ef89ce2f2821df4cd4995e81cd3784edb186504"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
