cask "lightcutvidz" do
  version "1.3.2"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.3.2/LightCutVidz-mac-arm64.dmg"
  sha256 "9ffc16f6e9f6e0301c8516dc8f2ce29578addf06e8736e90cf8553e3bdba8d4c"

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
