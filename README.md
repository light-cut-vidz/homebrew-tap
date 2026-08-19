# LightCutVidz Homebrew Tap

Official Homebrew tap for [**LightCutVidz**](https://light-cut-vidz.github.io/light-cut-vidz/) — trim, crop, filter and subtitle your videos, then export them.

## Install

```bash
brew install --cask light-cut-vidz/tap/light-cut-vidz
```

Or use the project's one-line installer, which runs the same `brew install` on macOS and installs
the `.deb` / `.AppImage` on Linux:

```bash
curl -fsSL https://raw.githubusercontent.com/light-cut-vidz/light-cut-vidz/main/install.sh | bash
```

## Upgrade

```bash
brew upgrade --cask light-cut-vidz
```

## Uninstall

```bash
brew uninstall --cask light-cut-vidz
brew untap light-cut-vidz/tap
```

Add `--zap` to also remove settings, caches and application data:

```bash
brew uninstall --zap --cask light-cut-vidz
```

## Requirements

- **macOS 12 Monterey or later** on Apple Silicon (M1/M2/M3/M4) — the minimum Chromium
  in Electron 41 supports. Intel Macs are not supported; the last version that ran on
  them is v1.1.0, available from the
  [releases page](https://github.com/light-cut-vidz/light-cut-vidz/releases/tag/v1.1.0).
- Nothing else — FFmpeg and ffprobe ship inside the app bundle.

The app is not signed with an Apple Developer certificate, so the cask ad-hoc signs it
and clears the quarantine flag on install. That is what lets it open without the
right-click → Open dance that a manually downloaded DMG still requires.

## Contents

| Cask | Description |
|------|-------------|
| [`light-cut-vidz`](Casks/light-cut-vidz.rb) | LightCutVidz desktop app (arm64 DMG) |

## How this tap is updated

Nothing here is edited by hand. Tagging a release in the
[main repository](https://github.com/light-cut-vidz/light-cut-vidz) triggers its
release workflow, which builds the DMG, computes its SHA-256 and bumps `version` and
`sha256` in `Casks/light-cut-vidz.rb`.

The cask body itself is the source of truth and lives only here — the workflow rewrites
those two fields and nothing else. It used to render the whole cask from a
`.rb.tmpl` template kept in the main repository, which silently reverted any fix made
here; that template is gone. Before pushing, the workflow audits and actually installs
the candidate cask on a macOS runner, so a cask that fails to install never reaches
this repository.

## Issues

Report problems on the [main issue tracker](https://github.com/light-cut-vidz/light-cut-vidz/issues).
