class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.3/microclaw-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "b45d2d940ee514333beb0af54286a371e178b3312dfc8e507b10c97a33422181"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.2.3/microclaw-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "847a7847c61b0c889e1ff036e6a5175df7c26ed1fd3850e746cb169d2408a874"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
