class Mccode < Formula
  desc "MicroClaw Code: a terminal coding agent for your repository"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.27.0/mccode-0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "298471906132b73285cfb387982956fdef9c551bb36c16b24bf12562d522223e"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.27.0/mccode-0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "00340dd18f975c44f3a055d15fda8c0c69f4b32b32e484e631f310f937269515"
    end
  end

  def install
    bin.install "mccode"
  end

  test do
    assert_match "mccode", shell_output("#{bin}/mccode --version")
  end
end
