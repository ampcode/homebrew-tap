class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783293536-g17072e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783293536-g17072e/amp-darwin-arm64"
      sha256 "514fb802663749675e4af954086249313a9fa5a804ec904d3ec9bd9153f8991c"
    else
      url "https://static.ampcode.com/cli/0.0.1783293536-g17072e/amp-darwin-x64"
      sha256 "ceb9f6d2153bf2b1d06bfc24e2d388e77d12fec8850b2740ff042257e8f3a5c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783293536-g17072e/amp-linux-arm64"
      sha256 "67c4eb446c689d4f97585c2dd2f6d0102dc1aad01ed998e8d5e48b07a6c850d8"
    else
      url "https://static.ampcode.com/cli/0.0.1783293536-g17072e/amp-linux-x64"
      sha256 "4699044b219e706ce5eebbcf1a98a9f5116baa37d3aef703b18e02085118477a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
