# Rabbitty — Homebrew tap

Rabbitty is a keyboard-driven worklane terminal that coordinates AI coding
agents. This tap provides the Homebrew cask. For downloads, releases, and issues
see **[rabbitty-app](https://github.com/mauscoelho/rabbitty-app)**.

## Requirements

- macOS **13 (Ventura)** or newer
- Apple Silicon **or** Intel (the build is universal — one download runs on both)

## Install

### Option 1 — Download (no Homebrew needed)

1. Download the latest **`Rabbitty-Beta-*.dmg`** from the
   [**Releases page**](https://github.com/mauscoelho/rabbitty-app/releases/latest).
2. Open it, drag **Rabbitty Beta** onto **Applications**.
3. Launch **Rabbitty Beta** from Spotlight.

It's signed + notarized by Apple, so it opens with no warning. Universal —
Apple Silicon and Intel.

### Option 2 — Homebrew

```bash
brew tap mauscoelho/tap
brew install --cask rabbitty-beta
```

Then launch **Rabbitty Beta** from Spotlight or your Applications folder.

Either way, the app **updates itself** — when a new beta ships, an "Update"
button appears in the top-right; click it to download and relaunch.

## Updating

```bash
brew upgrade rabbitty-beta
```

(A plain `brew upgrade` will also pick it up along with your other apps.)

## Uninstalling

```bash
brew uninstall --cask rabbitty-beta          # remove the app
brew uninstall --zap --cask rabbitty-beta    # also remove its config + data
```

## Troubleshooting

**"Refusing to load cask … from untrusted tap."**
Newer Homebrew asks you to trust third-party taps once:

```bash
brew trust --cask mauscoelho/tap/rabbitty-beta
```

Then re-run the install.

**"Apple could not verify…" / the app won't open.**
You have an older, un-notarized beta. Install (or reinstall) with:

```bash
brew install --cask --no-quarantine rabbitty-beta
```

Once you're on a notarized build (`0.1.0-beta.2`+), this flag is no longer
needed — a plain `brew install --cask rabbitty-beta` just works.

## What gets installed

- `Rabbitty Beta.app` in `/Applications` — a distinct app (id `dev.rabbitty.beta`),
  so it won't clash with any other Rabbitty build you may have.
- Config lives in `~/.config/rabbitty/` (theme, fonts). See the in-app command
  palette (`⌘⇧P`) and quick switcher (`⌘P`) to get around.
