cask "microclaw-work" do
  version "0.11.1"
  sha256 "f79138dd77be0fda1fe920ec1244d6084bf78165a31697100bd9125fe65bee2c"

  url "https://github.com/microclaw/microclaw/releases/download/v0.11.1/microclaw-work-#{version}-arm64-macos.dmg"

  name "MicroClaw Work"
  desc "Native desktop agent workspace powered by the shared MicroClaw runtime"
  homepage "https://github.com/microclaw/microclaw"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MicroClaw Work.app"
end
