cask "claudemetre" do
  version "1.1.32"
  sha256 "9add70faae163fdc624467537e4d463b25ec03c80e2875e60556843c51a79851"

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
