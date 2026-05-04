class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777926321-gea1d78"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777926321-gea1d78/amp-darwin-arm64"
      sha256 "f1ebf0a40480752619297c3d0ecbbbd9d3a8e8de732fcc37afa2f5803066623f"
    else
      url "https://static.ampcode.com/cli/0.0.1777926321-gea1d78/amp-darwin-x64"
      sha256 "36f936678a898591add534a9fac3bfdd8bb4fc6b6a98a451941edc23d15c2049"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777926321-gea1d78/amp-linux-arm64"
      sha256 "6557826b13597c9c6c669126d1394f6f2c51b0b9df975ca3a9bd4a2d3a7debfb"
    else
      url "https://static.ampcode.com/cli/0.0.1777926321-gea1d78/amp-linux-x64"
      sha256 "dc7e34d06dd7b71e2760eb165df8d9d108df627c48c443f30234c88034f49227"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
