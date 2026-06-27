cask "lightcutvidz" do
  version "1.3.9"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.3.9/LightCutVidz-mac-arm64.dmg"
  sha256 "98a369fa0d4f63b11e995260293e754531ace1793b2e7158c3978cde6f55fe7b"

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
