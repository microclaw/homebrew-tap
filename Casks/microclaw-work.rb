cask "microclaw-work" do
  version "0.10.1"
  sha256 "e1f2870a917cc705a0179a4301b7a8b1b835036e7a1d4d4ec766689ae2573f11"

  url "https://github.com/microclaw/microclaw/releases/download/v0.10.1/microclaw-work-#{version}-arm64-macos.dmg"

  name "MicroClaw Work"
  desc "Native desktop agent workspace powered by the shared MicroClaw runtime"
  homepage "https://github.com/microclaw/microclaw"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MicroClaw Work.app"
end
