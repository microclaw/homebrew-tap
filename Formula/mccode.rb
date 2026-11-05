class Mccode < Formula
  desc "MicroClaw Code: a terminal coding agent for your repository"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.23.0/mccode-0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "8b34e615ad4f65fa53360768f5930d8e82eb3fa5c22929bce6000fc86c28732d"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.23.0/mccode-0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "579673951f46cb93c270bab048965b0e0049f7bbc98086e1420558eb00f56eff"
    end
  end

  def install
    bin.install "mccode"
  end

  test do
    assert_match "mccode", shell_output("#{bin}/mccode --version")
  end
end
