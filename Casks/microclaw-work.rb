cask "microclaw-work" do
  version "0.5.2"
  sha256 "1606c8b8aef7501e0ce3141c6fafea775afac31a0d7b57babf6dd26f98ccf039"

  url "https://github.com/microclaw/microclaw/releases/download/v#{version}/microclaw-work-#{version}-arm64-macos.dmg"

  name "MicroClaw Work"
  desc "Native desktop agent workspace powered by the shared MicroClaw runtime"
  homepage "https://github.com/microclaw/microclaw"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MicroClaw Work.app"
end
