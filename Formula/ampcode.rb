class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792512050-g2ab73c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792512050-g2ab73c/amp-darwin-arm64"
      sha256 "aaaf7c0fcd7dba65114776d09bf26a3fae5aff12f51cd89ec2619bb119d0e3c4"
    else
      url "https://static.ampcode.com/cli/0.0.1792512050-g2ab73c/amp-darwin-x64"
      sha256 "2312dc262b39db46dfaf6ee27855ce32bbae807722a77bb011a78a85e37f957f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792512050-g2ab73c/amp-linux-arm64"
      sha256 "6b23ae33303043fe6e1df176c9188925a1ef39d18f9e2e60a801a6d9e90bb3ee"
    else
      url "https://static.ampcode.com/cli/0.0.1792512050-g2ab73c/amp-linux-x64"
      sha256 "85c9d289ff558103da520299ddd2d6d83beabd098307bf5eca0ce7740c6576db"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
