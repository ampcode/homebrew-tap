class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786378557-g73e9b1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786378557-g73e9b1/amp-darwin-arm64"
      sha256 "81c38efe4f3093a6cbba2a584d9a185ae5eebe1ccc770205f9830419eee1311a"
    else
      url "https://static.ampcode.com/cli/0.0.1786378557-g73e9b1/amp-darwin-x64"
      sha256 "8bfd1f0a40f6f2f33e82656a79dd04cafa43e65cba3250875f396af20af35423"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786378557-g73e9b1/amp-linux-arm64"
      sha256 "ebf2762e04995bc80db20678438fadca9a14c2eb4600838be4854723e2311b82"
    else
      url "https://static.ampcode.com/cli/0.0.1786378557-g73e9b1/amp-linux-x64"
      sha256 "c5db87fe27f54d7d5ff7bca8040d1315ded828d42c114c733cf2e6c09134ae86"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
