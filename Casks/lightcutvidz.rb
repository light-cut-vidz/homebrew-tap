cask "lightcutvidz" do
  version "1.3.4"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.3.4/LightCutVidz-mac-arm64.dmg"
  sha256 "01d44e592eae583c3cea474fc14c429e1f8dc5e7b475b0bd2d08948322b70ec5"

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
