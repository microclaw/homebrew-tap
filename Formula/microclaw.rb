class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.27/microclaw-0.1.27-aarch64-apple-darwin.tar.gz"
      sha256 "421773e911814b8b81754bbb86f41f4011d75cc4a8da8d37d006c42ee14d27c7"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.27/microclaw-0.1.27-x86_64-apple-darwin.tar.gz"
      sha256 "30dd2eea825bd0f383ae6e343eddfcf50b9bce6dd2c1c77b16180c19863e55ca"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
