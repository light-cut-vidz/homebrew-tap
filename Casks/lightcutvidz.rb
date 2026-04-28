cask "lightcutvidz" do
  version "1.0.1"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.1/LightCutVidz-mac-arm64.dmg"
    sha256 "70d28ca9c86d2dac1f54c55d1abfed5fa8a0cf90ddd6e76eb41a7160ff00ba28"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.1/LightCutVidz-mac-x64.dmg"
    sha256 "5d2308057bf9889f2437d49939cb3f5f0d6bc90d8bb42bd5135701cd630be95a"
  end

  name "LightCutVidz"
  desc "Lightweight video editor desktop app"
  homepage "https://light-cut-vidz.github.io/light-cut-vidz"

  app "LightCutVidz.app"

  depends_on macos: ">= :high_sierra"

  zap trash: [
    "~/Library/Application Support/LightCutVidz",
    "~/Library/Logs/LightCutVidz",
  ]
end
