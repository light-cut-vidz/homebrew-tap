cask "lightcutvidz" do
  version "1.3.6"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.3.6/LightCutVidz-mac-arm64.dmg"
  sha256 "cc3ba16e87a30be20001ad04d81dfd2724d1e298d711b59526a560dae44fcf22"

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
