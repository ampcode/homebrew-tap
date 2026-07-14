class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784018462-g51e7e3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784018462-g51e7e3/amp-darwin-arm64"
      sha256 "050637e4249a8c54e9a65e95be531eaab487102fe5af874cc20590cbd62a7d2c"
    else
      url "https://static.ampcode.com/cli/0.0.1784018462-g51e7e3/amp-darwin-x64"
      sha256 "3868d55ab03a96b5d3349cbb97a0a9d880b202ea910ca198be363076be2278b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784018462-g51e7e3/amp-linux-arm64"
      sha256 "aa031fd81d44c1219d0943f3ec98157716e9fa2c2d0056a25cbc5d57f9452cf1"
    else
      url "https://static.ampcode.com/cli/0.0.1784018462-g51e7e3/amp-linux-x64"
      sha256 "d5846f4ea6338d69706d9690fc7ac24c45ef1f3547fb4161839cddeee3c53e43"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
