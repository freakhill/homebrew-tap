cask "claudemetre" do
  version "1.1.23"
  sha256 "4bfc38705172b5064a30cc167a9ba39d6396e74f883167ae437c5b437d1c3e82"

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
