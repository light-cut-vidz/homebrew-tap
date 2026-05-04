cask "lightcutvidz" do
  version "1.0.2"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.2/LightCutVidz-mac-arm64.dmg"
    sha256 "64765c028b662f8da9bda68197a3d76afa6c57b5070ed652efec3bb2b5b1f775"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.2/LightCutVidz-mac-x64.dmg"
    sha256 "1291edb7a34c884c095bd3f8b62b91d33ca1b2a41af82262447cbe4ced510850"
  end

  name "LightCutVidz"
  desc "Lightweight video editor desktop app"
  homepage "https://light-cut-vidz.github.io/light-cut-vidz"

  app "LightCutVidz.app"

  depends_on macos: ">=11"

  zap trash: [
    "~/Library/Application Support/LightCutVidz",
    "~/Library/Logs/LightCutVidz",
  ]
end
