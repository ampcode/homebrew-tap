class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779922972-g832d94"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779922972-g832d94/amp-darwin-arm64"
      sha256 "a67d7667466185aa35425af3466ed550f2bdc52ef3bfd95bec1478f58e687e2b"
    else
      url "https://static.ampcode.com/cli/0.0.1779922972-g832d94/amp-darwin-x64"
      sha256 "8ca82c3e0dda2c844241fab1519795451384b6f3ea5c3075a373cdf748d1bd70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779922972-g832d94/amp-linux-arm64"
      sha256 "ea76ff2c9c7260d8cb25af51c22b55606ebc426328ce64a944002e72c2d66790"
    else
      url "https://static.ampcode.com/cli/0.0.1779922972-g832d94/amp-linux-x64"
      sha256 "f5ee8233bc49890e732d2d3f7b3f227854004c272d9690bb027240e59a885894"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
