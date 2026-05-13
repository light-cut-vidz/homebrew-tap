cask "lightcutvidz" do
  version "1.0.1"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.1/LightCutVidz-mac-arm64.dmg"
    sha256 "fa4cc0c72c24def5a878ef8291185ee61780786ab2fa5520b2bfbc330c55118a"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.1/LightCutVidz-mac-x64.dmg"
    sha256 "0e26ff52d9ec99efd44ccd0b78aeaa51be5bc8eddcf9b4101a9e983fcff86cfd"
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
