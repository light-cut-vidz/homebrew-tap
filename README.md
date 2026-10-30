# homebrew-tap

Homebrew tap for [LightCutVidz](https://github.com/light-cut-vidz/light-cut-vidz).

## Install

```bash
brew install --cask light-cut-vidz/tap/light-cut-vidz
```

## Update

```bash
brew update
brew upgrade --cask light-cut-vidz
```

## Uninstall

```bash
brew uninstall --cask light-cut-vidz
brew untap light-cut-vidz/tap
```

Add `--zap` to `brew uninstall` to also remove the app's settings and caches.

## About unsigned builds

LightCutVidz is not signed or notarized by Apple. If macOS refuses to open it on first launch, remove the quarantine attribute once:

```bash
xattr -dr com.apple.quarantine "/Applications/LightCutVidz.app"
```

## License

MIT — see [LICENSE](LICENSE).
