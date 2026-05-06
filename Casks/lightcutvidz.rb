cask "lightcutvidz" do
  version "1.0.2"

  on_arm do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.2/LightCutVidz-mac-arm64.dmg"
    sha256 "93e9ef5ebcf74568edc386e87cd6fd370528ce8a58a1a33c01db354f84755353"
  end

  on_intel do
    url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.0.2/LightCutVidz-mac-x64.dmg"
    sha256 "064d38921fac5f2ba3fcb583194501afa5f6565944fe2bc1f062c8d686f2e414"
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
