class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789128057-g5b22e8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789128057-g5b22e8/amp-darwin-arm64"
      sha256 "475b134dfe2cdae7a34b9b7db3919517abeb752c0d8ac36a02753ea173cdc80c"
    else
      url "https://static.ampcode.com/cli/0.0.1789128057-g5b22e8/amp-darwin-x64"
      sha256 "ef3ce38c1ac6384be452279e9fb51e0a8883c0502287f9b66893ed05e7cde6ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789128057-g5b22e8/amp-linux-arm64"
      sha256 "82db1aa5732bfce3116c44534f185ce654388b4fcac032f630764c6137425f00"
    else
      url "https://static.ampcode.com/cli/0.0.1789128057-g5b22e8/amp-linux-x64"
      sha256 "b4ab0b450fb42e5e940158deebee00076ff8509554c66452809cb88abecd77cc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
