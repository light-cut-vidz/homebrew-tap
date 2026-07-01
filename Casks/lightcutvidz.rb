cask "lightcutvidz" do
  version "1.4.0"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.4.0/LightCutVidz-mac-arm64.dmg"
  sha256 "344c75bc588ddc5625288251ae0bc9e7496cae88eb6fa66b5680455aa3fec267"

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
