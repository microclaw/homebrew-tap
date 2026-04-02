class Microclaw < Formula
  desc "Agentic AI assistant for Telegram - web search, scheduling, memory, tool execution"
  homepage "https://github.com/microclaw/microclaw"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.37/microclaw-0.1.37-aarch64-apple-darwin.tar.gz"
      sha256 "26b96e732ad38c73aa492033baddaf4d343bee84ffb78d2ff0537d58f5bfb684"
    else
      url "https://github.com/microclaw/microclaw/releases/download/v0.1.37/microclaw-0.1.37-x86_64-apple-darwin.tar.gz"
      sha256 "6d1b3f4310bafbb3381e63ecafaa7953ff5a2500fa2de9d9000610e6e5a0335d"
    end
  end

  def install
    bin.install "microclaw"
  end

  test do
    assert_match "MicroClaw", shell_output("#{bin}/microclaw help")
  end
end
