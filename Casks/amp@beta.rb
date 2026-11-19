cask "amp@beta" do
  version "1.0,1392"
  sha256 "4626b2efeedc12446d533303dbc1329100c17e195269f189e8181dae8ad8c520"

  url "https://static.ampcode.com/mac/Amp-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Amp"
  desc "Frontier coding agent"
  homepage "https://ampcode.com/app"

  livecheck do
    url "https://static.ampcode.com/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Amp.app"

  zap trash: [
    "~/Library/Application Scripts/com.ampcode.amp.macos",
    "~/Library/Application Scripts/com.ampcode.amp.macos.share",
    "~/Library/Application Scripts/group.com.ampcode.amp.macos",
    "~/Library/Containers/com.ampcode.amp.macos",
    "~/Library/Containers/com.ampcode.amp.macos.share",
    "~/Library/Group Containers/group.com.ampcode.amp.macos",
  ]
end
