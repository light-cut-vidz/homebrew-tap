cask "lightcutvidz" do
  version "1.2.1"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.2.1/LightCutVidz-mac-arm64.dmg"
  sha256 "c2cf5b8e1e611ee79f0420b61c89461de6f6208b8782a0b63d7d8a6dd1e97239"

  depends_on arch: :arm64

  name "LightCutVidz"
  desc "Lightweight video editor desktop app"
  homepage "https://light-cut-vidz.github.io/light-cut-vidz"

  app "LightCutVidz.app"

  zap trash: [
    "~/Library/Application Support/LightCutVidz",
    "~/Library/Logs/LightCutVidz",
  ]
end
