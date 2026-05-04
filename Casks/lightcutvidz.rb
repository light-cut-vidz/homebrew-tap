cask "lightcutvidz" do
  version "1.0.2-test"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.2-test/LightCutVidz-mac-arm64.dmg"
    sha256 "b0b3e3d239116c6e25f49f11db7e51380dea37806ff0cb90487123b03cce9d9a"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.2-test/LightCutVidz-mac-x64.dmg"
    sha256 "a36bb00665dc43677baa74fc035c33e43a4e66ffb80800e4dcd5ee69832aef1a"
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
