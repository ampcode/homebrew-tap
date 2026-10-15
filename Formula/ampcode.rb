class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792051250-g2fc5c0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792051250-g2fc5c0/amp-darwin-arm64"
      sha256 "082a48001bf1385c545850dbb8482df8fef5b5398dd2e5a3430816a3bfd010c1"
    else
      url "https://static.ampcode.com/cli/0.0.1792051250-g2fc5c0/amp-darwin-x64"
      sha256 "6b825a7da8b6763200e45eca21bcd8b2c81aa6b2c73546e6b2b76cb04f996c80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792051250-g2fc5c0/amp-linux-arm64"
      sha256 "da6dcfbc9f8698b0f4e18fe99cc379668c0af4bb5b6cd3937a99d880bb1b03a0"
    else
      url "https://static.ampcode.com/cli/0.0.1792051250-g2fc5c0/amp-linux-x64"
      sha256 "1df66499242259c9a933969dfe67173dff170684ad3ac0853cbe58a4a9391bbb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
