class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777580433-g997c35"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777580433-g997c35/amp-darwin-arm64"
      sha256 "6fea7644f6fb584e064082c15c192ba30bbea52e68988e836a188342b2651144"
    else
      url "https://static.ampcode.com/cli/0.0.1777580433-g997c35/amp-darwin-x64"
      sha256 "7850538fe7f85ac9fd366c13c122591382e6ccab83c8ab3702633f4738bbe439"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777580433-g997c35/amp-linux-arm64"
      sha256 "70b748c67ecc395ef7330c03d90f8c5683ac520fb1637e1684a809613ece4262"
    else
      url "https://static.ampcode.com/cli/0.0.1777580433-g997c35/amp-linux-x64"
      sha256 "d7f08316df4cbd2daeff63afb5f7e153082ebba835868bf781c9001c48615d57"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
