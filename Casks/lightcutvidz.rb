cask "lightcutvidz" do
  version "1.3.3"

  url "https://github.com/light-cut-vidz/light-cut-vidz/releases/download/v1.3.3/LightCutVidz-mac-arm64.dmg"
  sha256 "98e55caaf490ecc169cb5a24b66b3178205ecc405eae0d749721b7f663399130"

  depends_on arch: :arm64

  name "LightCutVidz"
  desc "Lightweight video editor desktop app"
  homepage "https://light-cut-vidz.github.io/light-cut-vidz"

  app "LightCutVidz.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/LightCutVidz.app"]
    system_command "/usr/bin/codesign",
      args: ["--force", "--deep", "--sign", "-", "#{appdir}/LightCutVidz.app"]
  end

  zap trash: [
    "~/Library/Application Support/LightCutVidz",
    "~/Library/Logs/LightCutVidz",
  ]
end
