class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777624460-g8bb2f0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777624460-g8bb2f0/amp-darwin-arm64"
      sha256 "ab0c332a3907e9429173bb9202d375cb5f82900581e9a8e413eb267fdad687af"
    else
      url "https://static.ampcode.com/cli/0.0.1777624460-g8bb2f0/amp-darwin-x64"
      sha256 "fdcbe3dbc45ae0c81abd0ad1d5427b368c2bdb12f1fd6fb194f56cc3bc37b6d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777624460-g8bb2f0/amp-linux-arm64"
      sha256 "bb7b1a4cc6d586a780710fad5b42dd6fceae580f6dc18182b23038f45d378e33"
    else
      url "https://static.ampcode.com/cli/0.0.1777624460-g8bb2f0/amp-linux-x64"
      sha256 "b9d0355d81ee4d4fefeb0a272ca2e05d599f9651a492bf881bd6038917751019"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
