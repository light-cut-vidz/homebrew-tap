cask "lightcutvidz" do
  version "1.0.0"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.0/LightCutVidz-mac-arm64.dmg"
    sha256 "a6d81d7d02b2db5ea789c1c0ae442fcd633b29bc9e2558c188293d8431380641"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.0/LightCutVidz-mac-x64.dmg"
    sha256 "513d7a635dea1896b312c723a6b24bde1dc30248c625428a1701c39fc857ce56"
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
