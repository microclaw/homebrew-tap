cask "microterm" do
  version "0.0.3"
  sha256 "600596a39ac6648f6255e427fff1dd12c0d20b41302a9480abdee4b80af2bd8c"

  url "https://github.com/microclaw/microterm/releases/download/v#{version}/MicroTerm-#{version}.dmg"
  name "MicroTerm"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/microclaw/microterm"

  app "MicroTerm.app"
end
