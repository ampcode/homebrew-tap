class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771718513-g9b2f90"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771718513-g9b2f90/amp-darwin-arm64"
      sha256 "795129026dda465208e0d0cdf9a2ed92cc15c5203ac9bd3274ea9a045520606c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771718513-g9b2f90/amp-darwin-x64"
      sha256 "34e14adaf8de31b40b746ad69f4d3266e751a95773f031d684e0de58ec37249b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771718513-g9b2f90/amp-linux-arm64"
      sha256 "006ba7fba4f0afdc53f089f86849d1069a0822a215557aed9e58eaf52ff4b961"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771718513-g9b2f90/amp-linux-x64"
      sha256 "5ffa0de695ae172bf2cc2e7e3730354b6539b59db8ea51d6a4448893071835f7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
