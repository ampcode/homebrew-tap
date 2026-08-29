class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787993684-g5991d2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787993684-g5991d2/amp-darwin-arm64"
      sha256 "3596c845bb8dbd70617fdfef52b1fa93499b5272c8381ee12981dbd68ac11aea"
    else
      url "https://static.ampcode.com/cli/0.0.1787993684-g5991d2/amp-darwin-x64"
      sha256 "1cf4dcdd2070895751608c5eb48445e50b7ac2642db6bfbe546c9d4c4024a0a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787993684-g5991d2/amp-linux-arm64"
      sha256 "feb43be19229025041b4db162e282988ac7eb4c6ca4750af0a971003541fba96"
    else
      url "https://static.ampcode.com/cli/0.0.1787993684-g5991d2/amp-linux-x64"
      sha256 "9da6b30abcfa91800638cbe78a1b63e55b8cf85a938b5038243454fca168541c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
