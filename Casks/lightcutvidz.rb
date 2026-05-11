cask "lightcutvidz" do
  version "1.0.4"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.4/LightCutVidz-mac-arm64.dmg"
    sha256 "9d7817345df9930ae4011be62ba675e7c18bfaf19ed364fc22a40cb527e8f2b4"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.4/LightCutVidz-mac-x64.dmg"
    sha256 "afc357013c77a107a2ebec6046ddd6e8b4afcd88136c7608058b11d8e81ffe19"
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
