class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.36/microclaw-0.1.36-aarch64-apple-darwin.tar.gz"
      sha256 "1a0d43549c51844dba678bcf6822f726f03b06c273b641584fa5b42615cee3aa"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.36/microclaw-0.1.36-x86_64-apple-darwin.tar.gz"
      sha256 "34f51201fd3dad4624d831d85a2be42fceb2cd273bd59eba185d238cf9a9b13d"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
