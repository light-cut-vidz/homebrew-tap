cask "lightcutvidz" do
  version "1.0.0"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.0/LightCutVidz-mac-arm64.dmg"
    sha256 "8f979910f8ab4d766722f92f7dfbb6baff4e8518459af2b8e6f378f63219bfa0"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.0/LightCutVidz-mac-x64.dmg"
    sha256 "d0ad7ada42c5afd8ab5c195f74f3f317eec7ca4db3cb989e880f8374f2175346"
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
