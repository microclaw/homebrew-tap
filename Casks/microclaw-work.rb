cask "microclaw-work" do
  version "0.8.0"
  sha256 "d560224b2960f9551e9152610daa95c40d17cc5297f057598577e02019d554cd"

  url "https://github.com/microclaw/microclaw/releases/download/v0.8.0/microclaw-work-#{version}-arm64-macos.dmg"

  name "MicroClaw Work"
  desc "Native desktop agent workspace powered by the shared MicroClaw runtime"
  homepage "https://github.com/microclaw/microclaw"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MicroClaw Work.app"
end
