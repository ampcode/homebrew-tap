class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777879744-g2d678a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777879744-g2d678a/amp-darwin-arm64"
      sha256 "1b6383d0ef32cce6d42edde2589eb615bfb7236994bf9dd0ae08cc09bb3ff60b"
    else
      url "https://static.ampcode.com/cli/0.0.1777879744-g2d678a/amp-darwin-x64"
      sha256 "da286044a7eb476b3af726ec040eb8635ae043bbc78172c5c2516a87233d52fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777879744-g2d678a/amp-linux-arm64"
      sha256 "64e6619ca48c2e395db92988f941465a6bc80ffb898ba05a89282217d1471918"
    else
      url "https://static.ampcode.com/cli/0.0.1777879744-g2d678a/amp-linux-x64"
      sha256 "f95822c0c310febffcb6f78d7509b5c3d4b975985a60913e534ac9a0dd7677a1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
