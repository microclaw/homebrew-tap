cask "microterm" do
  version "0.0.2"
  sha256 "b0faffbcf95d1a9e6b7688187087ae1aee92ded21bcfa375114fd822d871b0b9"

  url "https://github.com/microclaw/microterm/releases/download/v#{version}/MicroTerm-#{version}.dmg"
  name "MicroTerm"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/microclaw/microterm"

  app "MicroTerm.app"
end
