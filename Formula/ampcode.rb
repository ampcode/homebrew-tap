class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792600597-gf5159c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792600597-gf5159c/amp-darwin-arm64"
      sha256 "603ae0eeaeaac3033fcf4589f402f6c545505dcab35fcd642aa01c860af107b7"
    else
      url "https://static.ampcode.com/cli/0.0.1792600597-gf5159c/amp-darwin-x64"
      sha256 "e5107bd978e6d3c0e37aada40f01da7aa161ded6ab9da3f459093874c6eb8177"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792600597-gf5159c/amp-linux-arm64"
      sha256 "1554b44d8048dfa45272a473c918a3309635d122f8b9969c8d55d7e2c5db8120"
    else
      url "https://static.ampcode.com/cli/0.0.1792600597-gf5159c/amp-linux-x64"
      sha256 "66375b276e9643d9acf05fa08e2f474944eb6b79fca1c096d500e5a58aa8184c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
