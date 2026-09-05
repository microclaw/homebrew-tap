class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.6.1/microclaw-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "d83402acebca016f595e2b66015820c137559e0d8281d04cfe4eb66b12449a44"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.6.1/microclaw-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "57316147a1d25c37c6512ab97c630ff0067daefefa931ceaaf772e02a40d510e"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
