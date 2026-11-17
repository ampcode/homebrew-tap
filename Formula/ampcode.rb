class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794916837-g564d50"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794916837-g564d50/amp-darwin-arm64"
      sha256 "6797f9ccb23d24c1a9d7028f5b6b3bbb512da1ea407d78c6d855e9ddb20ae811"
    else
      url "https://static.ampcode.com/cli/0.0.1794916837-g564d50/amp-darwin-x64"
      sha256 "166231c1ea849f84633f83ec0a38dc5e8216cc12fc45e12652ef9c664a46247b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794916837-g564d50/amp-linux-arm64"
      sha256 "6802c312ae6d0bccf88bc8b59bcadac3f67b25c6aea1ac66a327fa130a21d1b1"
    else
      url "https://static.ampcode.com/cli/0.0.1794916837-g564d50/amp-linux-x64"
      sha256 "89cc7cd9a043629e2a0cfeeeb49bb233029c62738eedead997cbd7e10c934c2e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
