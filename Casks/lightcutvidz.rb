cask "lightcutvidz" do
  version "1.3.0"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.3.0/LightCutVidz-mac-arm64.dmg"
  sha256 "f9b4a36bb5f1ed37de6567def76875f2106b600587a9b288ba6cb3bee1fcc73f"

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
