class Mccode < Formula
  desc "MicroClaw Code: a terminal coding agent for your repository"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.28.0/mccode-0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "f4a3a61f3f6ffa1b972ecba7c10304f675047402ce6334c594d8b640ba52abbc"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.28.0/mccode-0.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "7b79184d4cec967af5d2bec8cfb154606b1b4e0991fd1861b17fd4968bbe6379"
    end
  end

  def install
    bin.install "mccode"
  end

  test do
    assert_match "mccode", shell_output("#{bin}/mccode --version")
  end
end
