cask "lightcutvidz" do
  version "1.0.3"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.3/LightCutVidz-mac-arm64.dmg"
    sha256 "29c97147f1839c26f50fd19947f9ac6b15c7b060638761f254ee6efe3d6788bf"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.3/LightCutVidz-mac-x64.dmg"
    sha256 "e1ea08acb4ce7467b3af5b14e6dc3bc226bf5b9b511f947f2b750707f557407c"
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
