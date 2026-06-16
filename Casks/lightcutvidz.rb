cask "lightcutvidz" do
  version "1.2.0"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.2.0/LightCutVidz-mac-arm64.dmg"
  sha256 "edcc8e294c96d94a02aed4660a3dbb085967e62867fbad0e7f8cfb73ed893c9a"

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
