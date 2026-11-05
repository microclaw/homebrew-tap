class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.23.1/microclaw-0.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "c89359244dc7ac514799efa260a197349b055744c07bba00c3c0cbebd6c7b89a"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.23.1/microclaw-0.23.1-x86_64-apple-darwin.tar.gz"
      sha256 "dd739e5a9c33dcf7b452170caaa50d1129e21c9b17e70894ecef950080f4631e"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
