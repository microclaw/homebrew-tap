class Mccode < Formula
  desc "MicroClaw Code: a terminal coding agent for your repository"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.29.0/mccode-0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "5ade4ff5c9c9e1fe87c110cebe6b0d7e66707cf93a4008c8c12343b1cd098b35"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.29.0/mccode-0.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "2b5f4331e21d29de591da654b27599b6c69d13f16ffc1c374a6c75ed845018a5"
    end
  end

  def install
    bin.install "mccode"
  end

  test do
    assert_match "mccode", shell_output("#{bin}/mccode --version")
  end
end
