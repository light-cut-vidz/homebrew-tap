cask "light-cut-vidz" do
  version "1.0.6"
  sha256 "08c2318b4f25da153045b21aaa9f526b661849e3e929da45390532a9fb94d882"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v#{version}/LightCutVidz-mac-arm64.zip"
  name "LightCutVidz"
  desc "Lightweight video editor desktop app"
  homepage "https://light-cut-vidz.github.io/light-cut-vidz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # L'app se remplace elle-même depuis la release : sans ça, brew continuerait de
  # croire qu'elle est restée à la version qu'il a installée.
  auto_updates true
  depends_on arch: :arm64
  # Electron 45 ships Chromium builds that require macOS 13 or later.
  depends_on macos: :ventura

  app "LightCutVidz.app"

  # The app is not signed with an Apple Developer certificate. Ad-hoc signing it
  # here is what lets it launch without the right-click -> Open dance.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/LightCutVidz.app"]
    run "/usr/bin/codesign",
        args: ["--force", "--deep", "--sign", "-", "{{appdir}}/LightCutVidz.app"]
  end

  zap trash: [
    "~/Library/Application Support/LightCutVidz",
    "~/Library/Logs/LightCutVidz",
    "~/Library/Preferences/com.lightcutvidz.app.plist",
    "~/Library/Saved Application State/com.lightcutvidz.app.savedState",
  ]
end
