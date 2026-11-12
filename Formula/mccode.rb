class Mccode < Formula
  desc "MicroClaw Code: a terminal coding agent for your repository"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.30.0/mccode-0.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "37c6818c8f5f80a301a08a773c471c0444c6b95b2a7ee18e376e88081dae852f"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.30.0/mccode-0.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "425524edd91e4b2a32af89b7917bb3098ef7427c5100ab4aad6dff8b6038bd20"
    end
  end

  def install
    bin.install "mccode"
  end

  test do
    assert_match "mccode", shell_output("#{bin}/mccode --version")
  end
end
