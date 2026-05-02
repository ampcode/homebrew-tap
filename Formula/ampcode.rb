class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777697948-g1a223c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777697948-g1a223c/amp-darwin-arm64"
      sha256 "d1d75f650f1c164a6a011d24daab90be64f9883a8133d4df7a7372cd244cc867"
    else
      url "https://static.ampcode.com/cli/0.0.1777697948-g1a223c/amp-darwin-x64"
      sha256 "00affe4d0ee8278e410c5658bddcbb1ebe3d855f8e140b1e6f29238e29b12475"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777697948-g1a223c/amp-linux-arm64"
      sha256 "5c3aea06a50bc3204dc5b0a5635531c0a7d27dda2c44a9f7e33aa4709c5e2361"
    else
      url "https://static.ampcode.com/cli/0.0.1777697948-g1a223c/amp-linux-x64"
      sha256 "cecdbc60ac0d308d632ba2f89dd8bbf7ba56b455932982c3220006f86a220ff1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
