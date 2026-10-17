class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792252850-g40af29"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792252850-g40af29/amp-darwin-arm64"
      sha256 "602f85aac53403c2b9dbceb257dc2b13ece5cd4bd462db4d0324c589804687f9"
    else
      url "https://static.ampcode.com/cli/0.0.1792252850-g40af29/amp-darwin-x64"
      sha256 "1f2efc8f7c6ebe2793ee3b13e759e856b724c1152164f088e1bfd478309fc8bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792252850-g40af29/amp-linux-arm64"
      sha256 "2f6577efb9af33b3812b14b454924c150e0bde962c53454dab7142ec29e186a6"
    else
      url "https://static.ampcode.com/cli/0.0.1792252850-g40af29/amp-linux-x64"
      sha256 "4fbac984f06d4d740436953ad3596be607dcbf1b2babfcac95a1a94ec54fd597"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
