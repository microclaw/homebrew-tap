class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.7.0/microclaw-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "20150e8990c7f0a1b3f09c86116e4a349a0e809cff29d918ef3fccba919382f2"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.7.0/microclaw-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "af1e426f2296dd291f2abfa69835d0841f9379ea7f85da679fbafddf310cebb4"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
