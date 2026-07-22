class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784678998-g2bf46b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784678998-g2bf46b/amp-darwin-arm64"
      sha256 "362d0262a38a7183d1b499c35cd2f69b0e1c041ca36fe00357aab5f3ec5955ee"
    else
      url "https://static.ampcode.com/cli/0.0.1784678998-g2bf46b/amp-darwin-x64"
      sha256 "3335bc5bc9893b1ac4a1cfc656051efd1a2b67b85a24d2385e45ef0088ce306f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784678998-g2bf46b/amp-linux-arm64"
      sha256 "e20932bd327732a9424aac45f50a8b44fca6fb71ece44adb341e814120256d1b"
    else
      url "https://static.ampcode.com/cli/0.0.1784678998-g2bf46b/amp-linux-x64"
      sha256 "7bd50af10dcd051d582722cc87c11eb055d928ac15a84c5cd9cb438bd509dfc6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
