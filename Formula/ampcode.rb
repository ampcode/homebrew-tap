class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789113641-gcd8b8a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789113641-gcd8b8a/amp-darwin-arm64"
      sha256 "3c9371af1bed55f8fec8f03fe72f0e06f9aec97f671ee2338e131d1fb938d37d"
    else
      url "https://static.ampcode.com/cli/0.0.1789113641-gcd8b8a/amp-darwin-x64"
      sha256 "313c9be999e13261ac3ce70f6cc3d3e8a38101ea29477fdcfee82fd4537d79b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789113641-gcd8b8a/amp-linux-arm64"
      sha256 "9d4fdb7f5b1197a46bfb2c6f926bb60fc92a3bf9b90a1e1a188e28bd0d4fbdb9"
    else
      url "https://static.ampcode.com/cli/0.0.1789113641-gcd8b8a/amp-linux-x64"
      sha256 "b85abf99057ee68be28be6867d2032611d303a3fa6fddaee1d6c2b2d22234185"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
