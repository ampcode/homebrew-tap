class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781027330-g7d5367"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781027330-g7d5367/amp-darwin-arm64"
      sha256 "2435a350f74bd8841f3364adcf2e5feebbc1fb0e0dd6b8466b518ad49f2c68f1"
    else
      url "https://static.ampcode.com/cli/0.0.1781027330-g7d5367/amp-darwin-x64"
      sha256 "d52bae32b14fc56dd4392f9dad0737d3a79c4b12d75871c50074a560c9a83d1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781027330-g7d5367/amp-linux-arm64"
      sha256 "b124dfb78fbf59aac77dc048b40f5d86942fd3d98dad9f561a0696bcbc38045b"
    else
      url "https://static.ampcode.com/cli/0.0.1781027330-g7d5367/amp-linux-x64"
      sha256 "b74c82d364e87211e378488d59ced611edcf4a0444a3d9b94c16d2215493178f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
