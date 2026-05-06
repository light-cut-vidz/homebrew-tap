cask "lightcutvidz" do
  version "1.0.1"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.1/LightCutVidz-mac-arm64.dmg"
    sha256 "140483ada38261a4321358d5bcf5560ae5cbd991d27ce5187c6d54ac3c140be7"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.1/LightCutVidz-mac-x64.dmg"
    sha256 "6acba3ad331b0c658cdc4217acdc3d73fb401c4082f8f45eda186c2e7cdbd634"
  end

  name "LightCutVidz"
  desc "Lightweight video editor desktop app"
  homepage "https://light-cut-vidz.github.io/light-cut-vidz"

  app "LightCutVidz.app"

  zap trash: [
    "~/Library/Application Support/LightCutVidz",
    "~/Library/Logs/LightCutVidz",
  ]
end
