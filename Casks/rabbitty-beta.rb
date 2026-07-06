cask "rabbitty-beta" do
  version "0.1.0-beta.1"
  sha256 "a5f0eb843ed46cdad098b94686b09395f544126bc3d755454da56e20bcc59dde"

  # Universal (arm64 + x86_64) beta from scripts/macos/package-beta.sh --universal,
  # attached to the GitHub prerelease so any Mac can install it.
  url "https://github.com/mauscoelho/rabbitty/releases/download/v#{version}/Rabbitty-Beta-#{version}.zip"
  name "Rabbitty Beta"
  desc "Keyboard-driven worklane terminal that coordinates AI coding agents"
  homepage "https://github.com/mauscoelho/rabbitty"

  # Distinct identity from the local dev build (dev.rabbitty.beta), so the two
  # coexist. Conflicts only with a future stable "rabbitty" cask.
  conflicts_with cask: "rabbitty"
  depends_on macos: :ventura

  app "Rabbitty Beta.app"

  # NB: config/state are shared with the local dev build — `brew uninstall --zap`
  # removes them for both. Plain `brew uninstall` leaves them untouched.
  zap trash: [
    "~/.config/rabbitty",
    "~/Library/Application Support/rabbitty",
  ]
end
