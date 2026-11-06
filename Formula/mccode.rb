class Mccode < Formula
  desc "MicroClaw Code: a terminal coding agent for your repository"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.25.0/mccode-0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "2f7aac0cd4473b61815763ab82a2a0326e9caaf236b5173f1aaae3899f70ea19"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.25.0/mccode-0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "347e4e9d369db2d993e435a13638a743a6e3ae8c0bd48cf137b183bdb95b0603"
    end
  end

  def install
    bin.install "mccode"
  end

  test do
    assert_match "mccode", shell_output("#{bin}/mccode --version")
  end
end
