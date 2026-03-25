class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.29/microclaw-0.1.29-aarch64-apple-darwin.tar.gz"
      sha256 "35c400be195dcf091553c55b3b78e91967645b8f454ba9c067e2663a0803e37d"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.29/microclaw-0.1.29-x86_64-apple-darwin.tar.gz"
      sha256 "f8377dafbeff22bc86ad8f8fac84ee2c17e079dc01fd2c6acbbd7a8f208add53"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
