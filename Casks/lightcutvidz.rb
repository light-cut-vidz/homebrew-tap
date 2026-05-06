cask "lightcutvidz" do
  version "1.0.0"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.0/LightCutVidz-mac-arm64.dmg"
    sha256 "e793dab199d43313a79f6e386fb77d7370ab29c38b8c6df072e7bb55d86c55d5"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.0/LightCutVidz-mac-x64.dmg"
    sha256 "8a53eda32599d2457a83b5b71476cbccf43eb593403cbd929ff26c8bacd894fa"
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
