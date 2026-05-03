class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777838989-g06e8a1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777838989-g06e8a1/amp-darwin-arm64"
      sha256 "231652c325273366987e5c7deefbc3047da2a42ecec24f40c9c6727b60527903"
    else
      url "https://static.ampcode.com/cli/0.0.1777838989-g06e8a1/amp-darwin-x64"
      sha256 "0c1c1ced27ed65b62bff4bae7b0322f7e7f11df15e5c998d04e850623bad7c94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777838989-g06e8a1/amp-linux-arm64"
      sha256 "cbccba8681f15d9edfdd43e78167d5ea097eef7c0ed598effb2d2dbe004d3364"
    else
      url "https://static.ampcode.com/cli/0.0.1777838989-g06e8a1/amp-linux-x64"
      sha256 "0a32b837ff83a6d2a93404c24d4e802a248007388f98ba9ef4d0542f75d6f818"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
