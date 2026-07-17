cask "claudemetre" do
  version "1.1.28"
  sha256 "79e39da48f0f60fab0427b0563db24237973a339f864da9a95141099631ced8e"

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
