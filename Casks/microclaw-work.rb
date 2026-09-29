cask "microclaw-work" do
  version "0.7.0"
  sha256 "5c07860091d2425d8323d5480ec33a565c63089074848b1f6d1cb457956e84de"

  url "https://github.com/microclaw/microclaw/releases/download/v0.7.0/microclaw-work-#{version}-arm64-macos.dmg"

  name "MicroClaw Work"
  desc "Native desktop agent workspace powered by the shared MicroClaw runtime"
  homepage "https://github.com/microclaw/microclaw"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MicroClaw Work.app"
end
