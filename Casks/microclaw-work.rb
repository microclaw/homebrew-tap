cask "microclaw-work" do
  version "0.9.0"
  sha256 "438290699d19b56e1fc99919ead0698a76fcecc20a2bcb03bf21f83676118721"

  url "https://github.com/microclaw/microclaw/releases/download/v0.9.0/microclaw-work-#{version}-arm64-macos.dmg"

  name "MicroClaw Work"
  desc "Native desktop agent workspace powered by the shared MicroClaw runtime"
  homepage "https://github.com/microclaw/microclaw"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MicroClaw Work.app"
end
