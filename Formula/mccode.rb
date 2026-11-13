class Mccode < Formula
  desc "MicroClaw Code: a terminal coding agent for your repository"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.31.0/mccode-0.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "2ca984dac9c8c647bd009d422673ad4468b2d0ffd7e9f2108bc21fbe28ec2df6"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.31.0/mccode-0.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "a359b27fe5970ed1c75a0127ca755dd232c41a234673b0e5f58595ebe5773b0e"
    end
  end

  def install
    bin.install "mccode"
  end

  test do
    assert_match "mccode", shell_output("#{bin}/mccode --version")
  end
end
