cask "lightcutvidz" do
  version "1.0.0"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.0/LightCutVidz-mac-arm64.dmg"
    sha256 "d258c94b46ac1431cabf9d9c0532df9da33c0031c6123d835b753858b530d175"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.0/LightCutVidz-mac-x64.dmg"
    sha256 "0a1c515c4dffde16f9867597d761d9b35e6a451c6263d06c1f4d434278123d09"
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
