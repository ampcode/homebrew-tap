class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781879644-g11379c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781879644-g11379c/amp-darwin-arm64"
      sha256 "e896ecfc78232b50eeddedec9463f17fa512f0e82b8686cfebe8d1f04f9f4052"
    else
      url "https://static.ampcode.com/cli/0.0.1781879644-g11379c/amp-darwin-x64"
      sha256 "b99cc9dd0720723706da63ea9b121992440eb742b0cbe4bec7e03527626cddee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781879644-g11379c/amp-linux-arm64"
      sha256 "fe433ae05da0833a5cef55e5eb6523aeeccef075e543715531462ab11eab085f"
    else
      url "https://static.ampcode.com/cli/0.0.1781879644-g11379c/amp-linux-x64"
      sha256 "e91d8b20bf4480e13e6c51370ac60a55058be9bcfcf858ea09a9fcc8464c97ae"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
