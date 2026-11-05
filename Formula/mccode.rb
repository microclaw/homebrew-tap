class Mccode < Formula
  desc "MicroClaw Code: a terminal coding agent for your repository"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.23.1/mccode-0.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "8c6fb5cdea069ec7554aff3ede0083b42ccc318098942d9cfbbf885bea7e8f78"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.23.1/mccode-0.23.1-x86_64-apple-darwin.tar.gz"
      sha256 "3d6e8ec5c61497ca91565293aa292e8a4944b34df25e64c623ecac6456e70c24"
    end
  end

  def install
    bin.install "mccode"
  end

  test do
    assert_match "mccode", shell_output("#{bin}/mccode --version")
  end
end
