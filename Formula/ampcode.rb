class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791216048-g3f2cac"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791216048-g3f2cac/amp-darwin-arm64"
      sha256 "ca075ff71b8476d85ee2f0aa480fd40a6285e888e577464dcae2f5aed69fd138"
    else
      url "https://static.ampcode.com/cli/0.0.1791216048-g3f2cac/amp-darwin-x64"
      sha256 "c794ca6b7d356dca423ad16dce9d611197b57914ae73ca8217669186ad6b3fda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791216048-g3f2cac/amp-linux-arm64"
      sha256 "a061bf1e5995b0199f5c12bf5f941fa35ad48e9ee67c330f1da0650e892f5f96"
    else
      url "https://static.ampcode.com/cli/0.0.1791216048-g3f2cac/amp-linux-x64"
      sha256 "ed1d9dc5ed0c609e2f5334e5e79bbf523768986fe0c1346e5fbe806bcd30c21e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
