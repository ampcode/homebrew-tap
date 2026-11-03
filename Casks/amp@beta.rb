cask "amp@beta" do
  version "1.0,1077"
  sha256 "2c21494fdcb3163eb22b98653ead257ab6068525c774b325d90a964ac3556cc8"

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
