class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.29.0/microclaw-0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "93dd715f6f7bd17745c35841105a0e69e57057db3971aa70fd2ab2b4cc078d59"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.29.0/microclaw-0.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "d339de1a0843d95434dd922347a98806b0a7a464c95cb5c3b2fb377bd91d6698"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
