cask "amp@beta" do
  version "1.0,1039"
  sha256 "ff5e7c799fc1fbb2e3de2fbe6d4c3e55c6a92e4104962d7733f6a573f7e76904"

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
