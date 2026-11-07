class Mccode < Formula
  desc "MicroClaw Code: a terminal coding agent for your repository"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.26.0/mccode-0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "98883bd359c18bbbdfcd82456f3c8c9d38744527125850b86b7fbf8a7258ade7"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.26.0/mccode-0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "e8425d49d5a2528e071ad4c03856436b19f00c33dc9695d4fe79f14e088ab5c2"
    end
  end

  def install
    bin.install "mccode"
  end

  test do
    assert_match "mccode", shell_output("#{bin}/mccode --version")
  end
end
