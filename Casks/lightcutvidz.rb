cask "lightcutvidz" do
  version "1.3.8"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.3.8/LightCutVidz-mac-arm64.dmg"
  sha256 "6b9e48b468cba6f4a4296fb288efbb979859ab15f930f27e0db7155dcfb4f372"

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
