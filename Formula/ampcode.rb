class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781689300-g3e1784"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781689300-g3e1784/amp-darwin-arm64"
      sha256 "82f99d7bf6473e2744e087a18e039fe6d7d431b03089444fc7e04bf2ed55c01d"
    else
      url "https://static.ampcode.com/cli/0.0.1781689300-g3e1784/amp-darwin-x64"
      sha256 "10f817e38491d62ecd536d1158ad3375b258df7ad93a0d16b83e33432c707038"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781689300-g3e1784/amp-linux-arm64"
      sha256 "6812fb566c20600a8d6fc5723e6b2b04f8ffbd3884eb50974817f931b7707d35"
    else
      url "https://static.ampcode.com/cli/0.0.1781689300-g3e1784/amp-linux-x64"
      sha256 "b84dccb12918c4ef01814f6831de0c1525a17eb3bd608e5c29bb8dd72ad5fbaa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
