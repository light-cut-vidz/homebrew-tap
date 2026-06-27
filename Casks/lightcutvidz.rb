cask "lightcutvidz" do
  version "1.3.11"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.3.11/LightCutVidz-mac-arm64.dmg"
  sha256 "5d3490fdc8b0aa969cbce2aa6c6159feaaae6d798dfdc74da81d751a9d90dfde"

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
