class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792470027-g8c393d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792470027-g8c393d/amp-darwin-arm64"
      sha256 "fc66ece7939d347a01161d0954e52c1fc6062ca39bd499fc7d94da056c5dde05"
    else
      url "https://static.ampcode.com/cli/0.0.1792470027-g8c393d/amp-darwin-x64"
      sha256 "efa11aa4fd90b2ddeeb8f951e2d8be2ee91330dda9492ece06195a2577bef819"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792470027-g8c393d/amp-linux-arm64"
      sha256 "2c4d7f49113e3ea36726e533b8d9a6df02b6985ca53d1115d885a7909b6b2ce3"
    else
      url "https://static.ampcode.com/cli/0.0.1792470027-g8c393d/amp-linux-x64"
      sha256 "a12afd668058fee5eaaa2c4748ad8ee663e641a6b4dafa1b427538c5c5ceb0a5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
