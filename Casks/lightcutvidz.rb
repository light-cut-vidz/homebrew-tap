cask "lightcutvidz" do
  version "1.0.3"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.3/LightCutVidz-mac-arm64.dmg"
    sha256 "2c73fae914c708c9050edf67d070868d584bc5b0eda586ec5f64f7710e3a5b94"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.3/LightCutVidz-mac-x64.dmg"
    sha256 "d53b1dbf53e7b7dd9c9ce64dae3f231087476485fa15d0cbcc0d157965b3d931"
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
