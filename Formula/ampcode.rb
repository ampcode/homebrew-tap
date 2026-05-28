class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779927513-g17febb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779927513-g17febb/amp-darwin-arm64"
      sha256 "9ceed051a02234ca26708b7fa14561b129e6dac96c1c6784d21d6bc53461391c"
    else
      url "https://static.ampcode.com/cli/0.0.1779927513-g17febb/amp-darwin-x64"
      sha256 "02c3abf866195f62141da4c70e4aa4ac67baf98d3e8b643bb8413c3bae6a8589"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779927513-g17febb/amp-linux-arm64"
      sha256 "200f59b03dab20e676b2f720bc2ea0e91012f41f97b2bd17811863b396a80c86"
    else
      url "https://static.ampcode.com/cli/0.0.1779927513-g17febb/amp-linux-x64"
      sha256 "43e63c486e8c7fd6056d5b72426b50477120931668d0f9d34ab1d5b129500ddb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
