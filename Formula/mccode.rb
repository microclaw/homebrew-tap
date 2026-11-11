class Mccode < Formula
  desc "MicroClaw Code: a terminal coding agent for your repository"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.29.1/mccode-0.29.1-aarch64-apple-darwin.tar.gz"
      sha256 "8b7d81da3ce7d667eb8394f7c2dd99da0c83aa9b490398ce39f53d52163d3df9"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.29.1/mccode-0.29.1-x86_64-apple-darwin.tar.gz"
      sha256 "939e32af2f9b35d0ed883743fdeb189b24bdf0f940f78de40980d017b22e9223"
    end
  end

  def install
    bin.install "mccode"
  end

  test do
    assert_match "mccode", shell_output("#{bin}/mccode --version")
  end
end
