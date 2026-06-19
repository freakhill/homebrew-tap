cask "claudemetre" do
  version "1.1.16"
  sha256 "2a6eacbefc8f73c31b808bae1a7d0f1969d9bae4f4b5f9159a002fc8c6c4c289"

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
