class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781078249-g506c66"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781078249-g506c66/amp-darwin-arm64"
      sha256 "d0a203d04d942be3e6307bc9a3727e95d70c84fe2991847ecf03f2f3cc3d3846"
    else
      url "https://static.ampcode.com/cli/0.0.1781078249-g506c66/amp-darwin-x64"
      sha256 "284e647146c2f08bdaa7c809cc43c24c4012e852a36876881260cc6542dd98ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781078249-g506c66/amp-linux-arm64"
      sha256 "aab9c06be57ba389c04ae557b59821516aa4e1d66edea47874cc84e8ec6800f8"
    else
      url "https://static.ampcode.com/cli/0.0.1781078249-g506c66/amp-linux-x64"
      sha256 "1b5a1006acf1dab97ebef4fd28db6b5a0e3cba87521671c66626fa84f72a797b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
