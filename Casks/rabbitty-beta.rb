cask "rabbitty-beta" do
  version "0.1.0"
  sha256 "PLACEHOLDER_SHA256"

  url "https://github.com/mauscoelho/rabbitty/releases/download/v#{version}/Rabbitty.zip"
  name "Rabbitty Beta"
  desc "Menu-bar dashboard and status coordinator for AI coding agents"
  homepage "https://github.com/mauscoelho/rabbitty"

  conflicts_with cask: "rabbitty"
  depends_on macos: ">= :ventura"

  app "Rabbitty.app"

  zap trash: [
    "~/.config/rabbitty",
    "~/Library/Application Support/rabbitty",
  ]
end
