class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777352624-g869aa9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777352624-g869aa9/amp-darwin-arm64"
      sha256 "71dddb4c26ae2557dcfd876657c43909bbd5fa0ad12416ad93a340cc8dfa480e"
    else
      url "https://static.ampcode.com/cli/0.0.1777352624-g869aa9/amp-darwin-x64"
      sha256 "2367517eeb22e3f2282e585d2c19c334e46402a8bed3b66b156a9ca3dfe24dc8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777352624-g869aa9/amp-linux-arm64"
      sha256 "3a56e7b188b44370765e0c3a8bd2bfe184c6753d3d5579c6300097b89953ee7d"
    else
      url "https://static.ampcode.com/cli/0.0.1777352624-g869aa9/amp-linux-x64"
      sha256 "82e64d6ecdb400d0b592bdaddc4fe514368f2d323cd3190062e272db9b73488b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
