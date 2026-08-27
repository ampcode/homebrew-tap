class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787847013-g93fa80"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787847013-g93fa80/amp-darwin-arm64"
      sha256 "9837bd32a03f223a6fc9da6eda12599de08bc53965fa599a1efbad18c641f7fd"
    else
      url "https://static.ampcode.com/cli/0.0.1787847013-g93fa80/amp-darwin-x64"
      sha256 "6849874ac5bb230ca6ec5f09c3cd47f7899626b448aa66418a3406c6d666d80a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787847013-g93fa80/amp-linux-arm64"
      sha256 "f2b4a3e4558ac13cf3bd50d00f5a84253d5f96619ca0a15cf067886963e8bdb4"
    else
      url "https://static.ampcode.com/cli/0.0.1787847013-g93fa80/amp-linux-x64"
      sha256 "b6cbeeead8e36d748a13304bcb43042500097a2b6c9feca593bb6a781149449d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
