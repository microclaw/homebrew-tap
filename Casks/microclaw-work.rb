cask "microclaw-work" do
  version "0.10.0"
  sha256 "25085e61b133f9a2585d9dbf6dd8d3627af422dbe02de5639448fb39ef30ccd0"

  url "https://github.com/microclaw/microclaw/releases/download/v0.10.0/microclaw-work-#{version}-arm64-macos.dmg"

  name "MicroClaw Work"
  desc "Native desktop agent workspace powered by the shared MicroClaw runtime"
  homepage "https://github.com/microclaw/microclaw"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MicroClaw Work.app"
end
