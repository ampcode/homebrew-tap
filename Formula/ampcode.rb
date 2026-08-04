class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785875347-gbc402f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785875347-gbc402f/amp-darwin-arm64"
      sha256 "b53d9bd26fd37d6d07583c418e984bd6422799902c52f821d733a59633a6745b"
    else
      url "https://static.ampcode.com/cli/0.0.1785875347-gbc402f/amp-darwin-x64"
      sha256 "70df7cca84a4e17c628da054e00edfdec1d1d378eddfc8418379d99b445b73dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785875347-gbc402f/amp-linux-arm64"
      sha256 "4773462915830c6934f42151bf42be99bb102c12b7a636026854ebc14a3435fa"
    else
      url "https://static.ampcode.com/cli/0.0.1785875347-gbc402f/amp-linux-x64"
      sha256 "a44cc0bd0481dcb6c871daaf43d4c1b158d81ebfd71da3dda0069e4d465d32df"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
