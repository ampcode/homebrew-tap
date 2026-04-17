class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776388074-g2e4c61"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776388074-g2e4c61/amp-darwin-arm64"
      sha256 "280affd53bc37edc4ab5d402d5b9a04c3c9cd0b48e2ea16918ab3e7e95a63b62"
    else
      url "https://static.ampcode.com/cli/0.0.1776388074-g2e4c61/amp-darwin-x64"
      sha256 "213730ca93dcf8eef89b25f6f8acdd9c41f2b9ef50dabd2d4ebe13ef69cfc522"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776388074-g2e4c61/amp-linux-arm64"
      sha256 "4c3d0c3f1ef45e1d6c3975e343ac131f47a9b067b79db9a5da802b5b4fedcfbf"
    else
      url "https://static.ampcode.com/cli/0.0.1776388074-g2e4c61/amp-linux-x64"
      sha256 "d4d5df9fa89ae6b4dc8b5845fd2e4b79fb678e4e2c479f1d3cdcdc7a417c2fe9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
