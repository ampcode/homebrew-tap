class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778658187-g1cc550"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778658187-g1cc550/amp-darwin-arm64"
      sha256 "a1183f862225823129b35f6b02111311c435eee15892d5e536558df374c86743"
    else
      url "https://static.ampcode.com/cli/0.0.1778658187-g1cc550/amp-darwin-x64"
      sha256 "7a13375f1d651ebcbc9e0e53de3b21a3e72d935de298d3b639356eeda611db3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778658187-g1cc550/amp-linux-arm64"
      sha256 "4f74e8b8a50218afcfaf837ddd1997e09cce678198b7a5c640ec5660bbf19f0d"
    else
      url "https://static.ampcode.com/cli/0.0.1778658187-g1cc550/amp-linux-x64"
      sha256 "1857de9042a16a5da146fb7500d0af6c97cb5066b60631d90004eb423abb219a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
