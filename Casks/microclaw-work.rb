cask "microclaw-work" do
  version "0.6.1"
  sha256 "70cd41d1c160f65a7441f82d4d57bae36972b4d2020e6409406356ee1fc01ad9"

  url "https://github.com/microclaw/microclaw/releases/download/v#{version}/microclaw-work-#{version}-arm64-macos.dmg"
  name "MicroClaw Work"
  desc "Native desktop agent workspace powered by the shared MicroClaw runtime"
  homepage "https://github.com/microclaw/microclaw"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MicroClaw Work.app"
end
