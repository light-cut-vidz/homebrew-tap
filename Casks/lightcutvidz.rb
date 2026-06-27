cask "lightcutvidz" do
  version "1.3.5"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.3.5/LightCutVidz-mac-arm64.dmg"
  sha256 "a27d3cff6f37dea61adb0e7f83c19f7c1b0b9257fc1bd39d81eb370045b4cfe7"

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
