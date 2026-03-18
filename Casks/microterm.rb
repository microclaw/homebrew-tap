cask "microterm" do
  version "0.0.1"
  sha256 "7ebc9fe03a8f39a62f58686774a4349cdf915c9fae96a9b55006bc10e1701ea1"

  url "https://github.com/microclaw/microterm/releases/download/v#{version}/MicroTerm-#{version}.dmg"
  name "MicroTerm"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/microclaw/microterm"

  app "MicroTerm.app"
end
