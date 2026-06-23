# freakhill/homebrew-tap

Homebrew tap for freakhill's macOS apps.

## claudemetre

A native macOS menubar gauge for Claude Code usage — session / burn / weekly — at zero token cost.

```sh
brew tap freakhill/tap
brew trust freakhill/tap
brew install --cask claudemetre
```

Upgrade with `brew upgrade --cask claudemetre`; remove with `brew uninstall --cask claudemetre`.

> If Homebrew refuses with an "untrusted tap" message (only happens when
> `HOMEBREW_REQUIRE_TAP_TRUST` is set), run `brew trust freakhill/tap` once first.

Source & releases: <https://github.com/freakhill/claudemetre>

---

Casks here are signed with a Developer ID and notarized by Apple, so they install without a
Gatekeeper warning. The `claudemetre` cask is bumped automatically by the upstream release
script on every release, so the tap always tracks the latest published version.
