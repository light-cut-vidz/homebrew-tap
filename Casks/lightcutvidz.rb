cask "lightcutvidz" do
  version "1.0.0"

  on_arm do
    url "https://github.com/sindus/light-cut-vidz/releases/download/v1.0.0/LightCutVidz-mac-arm64.dmg"
    sha256 "f970573a34780b2af01049f2b1d41eba7d129ac13de808906857d9ad847febb6"
  end

  on_intel do
    url "https://github.com/sindus/light-cut-vidz/releases/download/v1.0.0/LightCutVidz-mac-x64.dmg"
    sha256 "32a198c9599f254261ec6c7df664456ff2b86e3851f930b58582f8bbf730c87c"
  end

  name "LightCutVidz"
  desc "Lightweight video editor desktop app"
  homepage "https://sindus.github.io/light-cut-vidz"

  app "LightCutVidz.app"

  depends_on macos: ">= :high_sierra"

  zap trash: [
    "~/Library/Application Support/LightCutVidz",
    "~/Library/Logs/LightCutVidz",
  ]
end
