class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777856516-g66d841"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777856516-g66d841/amp-darwin-arm64"
      sha256 "f350af9bcc4383e7e8b79f58bfc33f1e38a351ddb9ae7acd8f51f143a4b15457"
    else
      url "https://static.ampcode.com/cli/0.0.1777856516-g66d841/amp-darwin-x64"
      sha256 "61337cbc5701b5080b3a0e2b39adc4dbc999f3133ca5139c863c81247ef284cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777856516-g66d841/amp-linux-arm64"
      sha256 "1c66827589c14fd5a76d8505a61b791601a46056afd01a7048e62e76367c65e4"
    else
      url "https://static.ampcode.com/cli/0.0.1777856516-g66d841/amp-linux-x64"
      sha256 "a9ca9e6062483bd5168c00e117be2d247436569228640bc0497b84e7ede18318"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
