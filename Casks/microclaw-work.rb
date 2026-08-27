cask "microclaw-work" do
  version "0.5.4"
  sha256 "be82d6d7e8f4a648dcf673984ed0c0e30f0f8b3fae6642b09a17099e9d2c2b8d"

  url "https://github.com/microclaw/microclaw/releases/download/v#{version}/microclaw-work-#{version}-arm64-macos.dmg"
  name "MicroClaw Work"
  desc "Native desktop agent workspace powered by the shared MicroClaw runtime"
  homepage "https://github.com/microclaw/microclaw"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MicroClaw Work.app"
end
