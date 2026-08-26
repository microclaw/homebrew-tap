cask "microclaw-work" do
  version "0.5.1"
  sha256 "f0fc1d12816f8625986a16ccf5bf4444a0b10be51cb28cbbdee9eaa0ea12902f"

  url "https://github.com/microclaw/microclaw/releases/download/v#{version}/microclaw-work-#{version}-arm64-macos.dmg"

  name "MicroClaw Work"
  desc "Native desktop agent workspace powered by the shared MicroClaw runtime"
  homepage "https://github.com/microclaw/microclaw"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "MicroClaw Work.app"
end
