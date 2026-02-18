class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771412186-g4e04c3"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771412186-g4e04c3/amp-darwin-arm64"
      sha256 "1068a7f8ac85c452eccae4b3e86a53f22c27e6e13a800db10560241d690041cb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771412186-g4e04c3/amp-darwin-x64"
      sha256 "d717b56a57616ba0c2bac39b52b607af2e2c57def24ae5269e992db217f73edc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771412186-g4e04c3/amp-linux-arm64"
      sha256 "1cfbd26d01c71c40cf0220c854414bed380ae0be7bdc28b082d283ef5d960b76"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771412186-g4e04c3/amp-linux-x64"
      sha256 "a97f649d06c6035eddbbee8cfae31a68188a0a327d0b89a1d819d79c55dac8bf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
