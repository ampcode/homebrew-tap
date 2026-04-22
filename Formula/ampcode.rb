class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776842549-g892675"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776842549-g892675/amp-darwin-arm64"
      sha256 "629ac7e941282f9c88e8142017ed102cfbfa6ea38e3798243f01e8fdbdea3597"
    else
      url "https://static.ampcode.com/cli/0.0.1776842549-g892675/amp-darwin-x64"
      sha256 "698df88e04ac386c75501ace7f2709f08fb0871b6285df8fc0336ab1d2f148df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776842549-g892675/amp-linux-arm64"
      sha256 "971c1b7d5d9faac7595915023e584936947ae74176f9a1cdd37685ede8b6c419"
    else
      url "https://static.ampcode.com/cli/0.0.1776842549-g892675/amp-linux-x64"
      sha256 "d7447f44ae898f5e51cc49fff40656173ef50dfe7436076e4e80eff260f17b1f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
