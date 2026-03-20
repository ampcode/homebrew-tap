class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774021889-g245168"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774021889-g245168/amp-darwin-arm64"
      sha256 "2ebf612b2819b2b853763f6dbbdb9f8c0deff9597956babf96d9f8c1ef7e88d1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774021889-g245168/amp-darwin-x64"
      sha256 "d3ebaf318a41524b95b76436700b2ce93f272c957e04f80208979f38b0424f98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774021889-g245168/amp-linux-arm64"
      sha256 "3cf4fc2d2d223674edde4f9a03b31ae8a45c8c8df75c68124956f4f256e4df05"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774021889-g245168/amp-linux-x64"
      sha256 "77c6f34ed05579648ba0cb05b03a8ab429c5259e6c7f716e357703232d6a4d2d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
