cask "lightcutvidz" do
  version "1.3.1"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.3.1/LightCutVidz-mac-arm64.dmg"
  sha256 "7ec421d49a8a09b35d673323992387e2a293391c6872f33d5d430a2ee3265bc2"

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
