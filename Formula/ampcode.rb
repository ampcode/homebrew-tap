class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777118834-g95d5aa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777118834-g95d5aa/amp-darwin-arm64"
      sha256 "807eef8db10d24cfc214343f117eaabd0632d8c4e943e1d12ade1f3484e8007f"
    else
      url "https://static.ampcode.com/cli/0.0.1777118834-g95d5aa/amp-darwin-x64"
      sha256 "217d2f1bacea6e0bbbbc446a66d5548bd0f339b3f13ccee0e87d7013e41ebaa8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777118834-g95d5aa/amp-linux-arm64"
      sha256 "df8c83edfb42d347a8ff3d679870b3fe264afae1e82ec3a2082122d3100febde"
    else
      url "https://static.ampcode.com/cli/0.0.1777118834-g95d5aa/amp-linux-x64"
      sha256 "630ba45b39cc014bc47b2cea6b90f305e8ed8ae0206c5258278ef46332e33b9f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
