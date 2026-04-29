class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777452039-ga4a68a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777452039-ga4a68a/amp-darwin-arm64"
      sha256 "d9ef28ccf877dc5dffff7b7b713972fddfa60e13e0ba6aa428709b093c903768"
    else
      url "https://static.ampcode.com/cli/0.0.1777452039-ga4a68a/amp-darwin-x64"
      sha256 "6c50964ca0496ee1044e943b1fb35133179c25fd2f11e6330869518575e56ebe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777452039-ga4a68a/amp-linux-arm64"
      sha256 "59314697b3653b12786ac8fb63b860c3d66676befc00b3ca55556379a69b13b6"
    else
      url "https://static.ampcode.com/cli/0.0.1777452039-ga4a68a/amp-linux-x64"
      sha256 "3b9c940a4deb4f64c86058b1e160808fbab04103163d43cfe127f3ff1cc0a789"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
