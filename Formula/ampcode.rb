class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791648041-ga99364"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791648041-ga99364/amp-darwin-arm64"
      sha256 "fa1b8491015224a9e070c07305a29ded5b27f71a13a1917c26aaa69c73fc6ba4"
    else
      url "https://static.ampcode.com/cli/0.0.1791648041-ga99364/amp-darwin-x64"
      sha256 "15401b9fa40a689a407e28565fe417bd385c46b8876d067abb3d848f5f07a915"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791648041-ga99364/amp-linux-arm64"
      sha256 "70066000bef3151039345821e89a5ace951950513d9bd98e93b92aa50986fdfe"
    else
      url "https://static.ampcode.com/cli/0.0.1791648041-ga99364/amp-linux-x64"
      sha256 "812663312f76f8cbcbfb8dec9bc6fb83f6781e1e486dc768a22f432add870742"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
