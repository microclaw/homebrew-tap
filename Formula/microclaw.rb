class Microclaw < Formula
  desc "Self-hosted Rust agent runtime with tools, memory, and scheduling"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.10.0/microclaw-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "be989836f11d0874ecd6d85a5ae805c20dd60914cf276df9be0e26dbe2cc6cc7"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.10.0/microclaw-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "ca2619ee0a618d9f97cd78169ba2db48cbd21efed7b2f9ffcf7c5f0c13a57ba6"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
