class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794297642-g6d0247"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794297642-g6d0247/amp-darwin-arm64"
      sha256 "9dca5dfe5f4e25d2ae6c024e69d74da41187aade9df80336071c9a1400321413"
    else
      url "https://static.ampcode.com/cli/0.0.1794297642-g6d0247/amp-darwin-x64"
      sha256 "e5b3030c4523a39dc0fd09f40e86ed2a80be47c65d21bea2ba8193d16b4d63ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794297642-g6d0247/amp-linux-arm64"
      sha256 "f92c439b610249a50cdb902bb72015ed2ed950e6fbf67935e7965008d0626485"
    else
      url "https://static.ampcode.com/cli/0.0.1794297642-g6d0247/amp-linux-x64"
      sha256 "e466ca71e582df7fb60268ec3273e3d8b4760f5ba8590b7eef10e9d709680308"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
