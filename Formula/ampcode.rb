class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792310430-g2972dc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792310430-g2972dc/amp-darwin-arm64"
      sha256 "dcfd1a6cd7a9d11fab9fe79937905d2d3e8942339e37529bdc9b2d3a58a00ee3"
    else
      url "https://static.ampcode.com/cli/0.0.1792310430-g2972dc/amp-darwin-x64"
      sha256 "261580a06dd4dcbbc73e7f851bcdf64dec48411dfd0f3e5d53a03997fc96d947"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792310430-g2972dc/amp-linux-arm64"
      sha256 "ce392114384e114e0745598e7d439b3cc85053b140d819fcf276645fe62ec6ad"
    else
      url "https://static.ampcode.com/cli/0.0.1792310430-g2972dc/amp-linux-x64"
      sha256 "001dfd19cbd8848e02dc6dcbc3c9874440215c697f5eab00bd7b72ad40449883"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
