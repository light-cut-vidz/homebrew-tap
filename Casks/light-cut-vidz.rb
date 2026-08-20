cask "light-cut-vidz" do
  version "1.0.1"
  sha256 "0b933c92e0bf4303aae86d911f1d6568ab13e4e204fc18f641782642aa09ead7"

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
  # Electron 41 ships Chromium builds that require macOS 12 or later.
  depends_on macos: :monterey

  app "LightCutVidz.app"

  # The app is not signed with an Apple Developer certificate. Ad-hoc signing it
  # here is what lets it launch without the right-click -> Open dance.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/LightCutVidz.app"]
    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{appdir}/LightCutVidz.app"]
  end

  zap trash: [
    "~/Library/Application Support/LightCutVidz",
    "~/Library/Logs/LightCutVidz",
    "~/Library/Preferences/com.lightcutvidz.app.plist",
    "~/Library/Saved Application State/com.lightcutvidz.app.savedState",
  ]
end
