class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781143784-g47b692"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781143784-g47b692/amp-darwin-arm64"
      sha256 "671718184b0b6870d1b5bbc44016d8050f87dea4baca88ef14cff2decaf0ceac"
    else
      url "https://static.ampcode.com/cli/0.0.1781143784-g47b692/amp-darwin-x64"
      sha256 "72ba2e5fad995d65a3d657f182c2d1456c7d4f33902e67f5ecb682e0f7b82c63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781143784-g47b692/amp-linux-arm64"
      sha256 "fba48531aed6cb0225ac1dff968b9b2ddcc519c1373eb9b271d7c93b9478944e"
    else
      url "https://static.ampcode.com/cli/0.0.1781143784-g47b692/amp-linux-x64"
      sha256 "d599612eacc7018aa96cac44703982c77954467cbf07489a9cea8a86fd3cb8a5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
