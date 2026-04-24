class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777067029-g5344a6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777067029-g5344a6/amp-darwin-arm64"
      sha256 "12ff9f975ffd81c0d311cfc54b7bec9b7a09c509a182a66fe1ab66baeaa0cb78"
    else
      url "https://static.ampcode.com/cli/0.0.1777067029-g5344a6/amp-darwin-x64"
      sha256 "eac2e2234bf631838fe652c639d05e5ccc8ecb2eaae244b2108af36b31aac0fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777067029-g5344a6/amp-linux-arm64"
      sha256 "8758eafa5f046f147447b9341bcdce4a324c3bec0763aaec53a12949f9af1792"
    else
      url "https://static.ampcode.com/cli/0.0.1777067029-g5344a6/amp-linux-x64"
      sha256 "a5c415c37aecae557c209bc1382fa3246f08747cdab7baeb38b605b54d07404a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
