class Mccode < Formula
  desc "MicroClaw Code: a terminal coding agent for your repository"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.30.2/mccode-0.30.2-aarch64-apple-darwin.tar.gz"
      sha256 "05bc9a55cd9a8ed1be0aaa4c249c89b7276481df8fc28982da9c948a38362be2"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.30.2/mccode-0.30.2-x86_64-apple-darwin.tar.gz"
      sha256 "016dbcf7f5111ce8a7f64ef780045f7357c205251aba77158107047edcdd0afb"
    end
  end

  def install
    bin.install "mccode"
  end

  test do
    assert_match "mccode", shell_output("#{bin}/mccode --version")
  end
end
