cask "lightcutvidz" do
  version "1.1.0"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.1.0/LightCutVidz-mac-arm64.dmg"
    sha256 "53162b82cb95d365ff4a3f0b046ebc6b94806aa6f3fc4c394501b12b5df28e88"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.1.0/LightCutVidz-mac-x64.dmg"
    sha256 "bdad6c0e08113fbde578ebf3a68e303341f182b912d377210f33c8cf15b4977b"
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
