cask "microclaw-work" do
  version "0.5.3"
  sha256 "e8d0704f26cdbd7352075e2ec24ae1448c6957d55c0f4bfaef1fb07ea238bcb9"

  url "https://github.com/microclaw/microclaw/releases/download/v#{version}/microclaw-work-#{version}-arm64-macos.dmg"

  name "MicroClaw Work"
  desc "Native desktop agent workspace powered by the shared MicroClaw runtime"
  homepage "https://github.com/microclaw/microclaw"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MicroClaw Work.app"
end
