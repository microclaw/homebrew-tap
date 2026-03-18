cask "microterm" do
  version "1.0.1"
  sha256 "3c113ff12656e70e5d91b53a85c41997d73defe82ea1b3feea5315c59f156efc"

  url "https://github.com/microclaw/microterm/releases/download/v#{version}/MicroTerm-#{version}.dmg"
  name "MicroTerm"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/microclaw/microterm"

  app "MicroTerm.app"
end
