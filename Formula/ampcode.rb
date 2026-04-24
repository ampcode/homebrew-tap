class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777022416-gb7b2e9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777022416-gb7b2e9/amp-darwin-arm64"
      sha256 "436380b42f2e2b7e4fbf5b3e9ac35cbd3b34eb801659899a4812462fff933b49"
    else
      url "https://static.ampcode.com/cli/0.0.1777022416-gb7b2e9/amp-darwin-x64"
      sha256 "386eb81b3d3818ecd505ead95470c37fa3cf64c99abbf14ce0f7daf4f3583a81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777022416-gb7b2e9/amp-linux-arm64"
      sha256 "dd258fd70b2a5ea670b7a96dbbfb2ea070375e2f20ae8c64c19983c92d651a33"
    else
      url "https://static.ampcode.com/cli/0.0.1777022416-gb7b2e9/amp-linux-x64"
      sha256 "4f40e992bf25662a471a2fd8e49991e66b46b4f73e586e261b3f230af39615ed"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
