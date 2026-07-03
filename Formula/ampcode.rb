class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783081993-g921ca9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783081993-g921ca9/amp-darwin-arm64"
      sha256 "82772529d52b2e3e12e4a6bece778506c21994a5a9f16b9401ac6697e5ee33e7"
    else
      url "https://static.ampcode.com/cli/0.0.1783081993-g921ca9/amp-darwin-x64"
      sha256 "2e83e13c9b192f8c9e9c4aa85df017049786a2f34016087b73fa03de4d5971a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783081993-g921ca9/amp-linux-arm64"
      sha256 "f816cb8b1944687b2d8ada0d6ddb7f84733882669260c53a3d3ff5c1e4b2c6fb"
    else
      url "https://static.ampcode.com/cli/0.0.1783081993-g921ca9/amp-linux-x64"
      sha256 "70f0f5f36bc15eaf30085533d0a4d853e9bfa7728bbbd494c77733acdac76775"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
