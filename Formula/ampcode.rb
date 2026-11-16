class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794838312-g371aa5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794838312-g371aa5/amp-darwin-arm64"
      sha256 "abfe1ac4fe17f465b385d5d6e841e72ac889225004b1873916ed30f0efe7db4f"
    else
      url "https://static.ampcode.com/cli/0.0.1794838312-g371aa5/amp-darwin-x64"
      sha256 "c3a565fc35e91b092520ef13bd658668620e3c58ae1f73bca68ae425814cc4b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794838312-g371aa5/amp-linux-arm64"
      sha256 "13e848b76d93eeda3f806459622a44535a990837cac164f23df615c9b4fceb51"
    else
      url "https://static.ampcode.com/cli/0.0.1794838312-g371aa5/amp-linux-x64"
      sha256 "9a7c2aff85cf7d9f79581d5ddb3a49d80b2a794607d6695b00d3d5d052cedfd1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
