cask "rabbitty-beta" do
  version "0.1.0-beta.54"
  sha256 "4f260e9fffff8f8be4ce9eddc4e94cdbe68e2ab12f1f722f2aa4c5c60afc7069"

  # Universal (arm64 + x86_64), Developer ID signed + notarized — installs with no
  # --no-quarantine. Hosted on the PUBLIC rabbitty-app repo's releases; the source
  # repo (mauscoelho/rabbitty) is private, so its release assets aren't downloadable.
  url "https://github.com/mauscoelho/rabbitty-app/releases/download/v#{version}/Rabbitty-Beta-#{version}.zip"
  name "Rabbitty Beta"
  desc "Keyboard-driven worklane terminal that coordinates AI coding agents"
  homepage "https://github.com/mauscoelho/rabbitty-app"

  # Distinct identity from the local dev build (dev.rabbitty.beta), so the two
  # coexist. Conflicts only with a future stable "rabbitty" cask.
  conflicts_with cask: "rabbitty"
  depends_on macos: :ventura

  # The app self-updates (in-app updater), so Homebrew shouldn't fight it: brew
  # tracks the version it installed but won't force-manage upgrades.
  auto_updates true

  app "Rabbitty Beta.app"

  # NB: config/state are shared with the local dev build — `brew uninstall --zap`
  # removes them for both. Plain `brew uninstall` leaves them untouched.
  zap trash: [
    "~/.config/rabbitty",
    "~/Library/Application Support/rabbitty",
  ]
end
