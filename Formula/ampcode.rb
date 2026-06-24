class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782265918-gf6a063"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782265918-gf6a063/amp-darwin-arm64"
      sha256 "8bfabff8e8627da7a9480cf627ff11a7aa7d30a346fbad01a1dedec97439390e"
    else
      url "https://static.ampcode.com/cli/0.0.1782265918-gf6a063/amp-darwin-x64"
      sha256 "6392a9234891db5ab13102bdcf2f262423ca46049e102dcde98b3d240c43229e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782265918-gf6a063/amp-linux-arm64"
      sha256 "7546c26a63c011a9ca580e48730b885db749f268d2c0fe2a3302637aa6784c3a"
    else
      url "https://static.ampcode.com/cli/0.0.1782265918-gf6a063/amp-linux-x64"
      sha256 "c7a4bea3282982a580f2ede1acbb616a1cf0d479b0758dd66d2b471841384a0b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
