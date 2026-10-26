cask "microclaw-work" do
  version "0.11.0"
  sha256 "84da2f4750610deb8f3c3f0e41e9e772ae727601d1b0531ba6abb1c9db3bd73f"

  url "https://github.com/microclaw/microclaw/releases/download/v0.11.0/microclaw-work-#{version}-arm64-macos.dmg"

  name "MicroClaw Work"
  desc "Native desktop agent workspace powered by the shared MicroClaw runtime"
  homepage "https://github.com/microclaw/microclaw"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MicroClaw Work.app"
end
