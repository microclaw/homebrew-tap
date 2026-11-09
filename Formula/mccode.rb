class Mccode < Formula
  desc "MicroClaw Code: a terminal coding agent for your repository"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.27.1/mccode-0.27.1-aarch64-apple-darwin.tar.gz"
      sha256 "623acb6b6f59e39d1d1d8f1564e7664af662fea964d81f3af39c87c457e1b0d3"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.27.1/mccode-0.27.1-x86_64-apple-darwin.tar.gz"
      sha256 "38d5ffd6e34943c59fbdc2b528d0f55ffebfd7fc688af0c931123987f885e844"
    end
  end

  def install
    bin.install "mccode"
  end

  test do
    assert_match "mccode", shell_output("#{bin}/mccode --version")
  end
end
