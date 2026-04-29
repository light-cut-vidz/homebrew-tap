cask "lightcutvidz" do
  version "1.0.0"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.0/LightCutVidz-mac-arm64.dmg"
    sha256 "c7ef2e22dabcc944509f1d72e4fae3af94023868c31c23c8899c860771f13e21"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.0/LightCutVidz-mac-x64.dmg"
    sha256 "28e37598a86188b07dc4865f247a6ede2da36134932ed523d9a8b75c3758d013"
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
