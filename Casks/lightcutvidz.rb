cask "lightcutvidz" do
  version "1.3.7"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.3.7/LightCutVidz-mac-arm64.dmg"
  sha256 "da834aa7d6db1f3091b61e7b35a22992b56d3dc7b85324dc24d6cc2e9ba8b179"

  depends_on arch: :arm64

  name "LightCutVidz"
  desc "Lightweight video editor desktop app"
  homepage "https://light-cut-vidz.github.io/light-cut-vidz"

  app "LightCutVidz.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/LightCutVidz.app"]
    system_command "/usr/bin/codesign",
      args: ["--force", "--deep", "--sign", "-", "#{appdir}/LightCutVidz.app"]
  end

  zap trash: [
    "~/Library/Application Support/LightCutVidz",
    "~/Library/Logs/LightCutVidz",
  ]
end
