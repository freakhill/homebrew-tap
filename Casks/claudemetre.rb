cask "claudemetre" do
  version "1.1.25"
  sha256 "a00181cf5f7bc5091f934b82c5bd075ff001bd123b126a627cbe2e9b724d0ecb"

  url "https://github.com/freakhill/claudemetre/releases/download/v#{version}/claudemetre-#{version}.zip"
  name "claudemetre"
  desc "Menubar gauge for Claude Code usage (session / burn / weekly), at zero token cost"
  homepage "https://github.com/freakhill/claudemetre"

  # Developer-ID signed + Apple-notarized, so no :no_quarantine needed.
  depends_on macos: :ventura

  app "claudemetre.app"

  zap trash: [
    "~/Library/Application Support/claudemetre",
    "~/Library/Preferences/me.lucyjojo.claudemetre.plist",
  ]
end
