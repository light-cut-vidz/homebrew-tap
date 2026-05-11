cask "lightcutvidz" do
  version "1.0.5"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.5/LightCutVidz-mac-arm64.dmg"
    sha256 "551ed66219d35af9feff75dbb60dfe323d0ae200d8deb70eb3cccadce2e5abb5"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.5/LightCutVidz-mac-x64.dmg"
    sha256 "41fcdd9911f9527f60f641b62005ad5a5f5671a169f294df969a92e2abdc97ae"
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
