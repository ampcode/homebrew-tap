class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794830433-g119204"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794830433-g119204/amp-darwin-arm64"
      sha256 "bf8e6891fba3bb62f8eae6daee96badf18db5b6a120544afd567133b6af504d0"
    else
      url "https://static.ampcode.com/cli/0.0.1794830433-g119204/amp-darwin-x64"
      sha256 "d9f365b820814da41ac4772df94fba5d74440252586bb983244e6e9a8e3cd5d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794830433-g119204/amp-linux-arm64"
      sha256 "d2c54a7d6179aff56e65b1f476bacf283e6453cc399866bab5a4ac138188cc22"
    else
      url "https://static.ampcode.com/cli/0.0.1794830433-g119204/amp-linux-x64"
      sha256 "fd6ddfc84287273cccd824f0c811b9137bf236f7b3ac9bb7f6ebb0b53abfbb5d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
