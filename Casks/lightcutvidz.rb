cask "lightcutvidz" do
  version "1.0.4"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.4/LightCutVidz-mac-arm64.dmg"
    sha256 "982234c12da68130dd1f840c27e33b90e3bb224cbfcb4efa626e6fbe1f761311"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.4/LightCutVidz-mac-x64.dmg"
    sha256 "bc94e27e7bda51d18aa4b773863fb81af3551f3efc8cb02e2cdb88e36499a8d9"
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
