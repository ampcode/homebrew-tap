class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781274369-g7f9cd4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781274369-g7f9cd4/amp-darwin-arm64"
      sha256 "b851cf318f675e7f9b0df26429656005a2f2e1637c186fc6fcb8a7bca8326c62"
    else
      url "https://static.ampcode.com/cli/0.0.1781274369-g7f9cd4/amp-darwin-x64"
      sha256 "31a42faf8868a1200beafa536bef53ff6bc0f2331630f924c4a9083dc52d8e76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781274369-g7f9cd4/amp-linux-arm64"
      sha256 "e386d45ebbfc0f1c90fb3d749790a7eb3c2e99c1b57dd60482f9d71273214c23"
    else
      url "https://static.ampcode.com/cli/0.0.1781274369-g7f9cd4/amp-linux-x64"
      sha256 "79c770e73bf9483858f5a2adae5af12903f59f0185bd349e9da08afc3669ecab"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
