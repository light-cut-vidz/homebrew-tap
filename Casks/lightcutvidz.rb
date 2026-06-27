cask "lightcutvidz" do
  version "1.3.10"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.3.10/LightCutVidz-mac-arm64.dmg"
  sha256 "42160a0fd8b4f24af42bdff77d15a9e0626bec0000c36b951ce2d4d75b1a8874"

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
