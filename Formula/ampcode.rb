class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770957338-g481fd6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770957338-g481fd6/amp-darwin-arm64"
      sha256 "f93fc9401357ca4a14fb9dd43c8bb99a8c9a0e211693c21a21c2d7765a713393"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770957338-g481fd6/amp-darwin-x64"
      sha256 "565611f7fd39fa1e4e52403aa914d51e0168ae4d0d5d06918fb9a48d89d7c765"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770957338-g481fd6/amp-linux-arm64"
      sha256 "a3260ff335149c26aa93bdc1b3cce2f8d3dc0844898f476652e2e95c44d44115"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770957338-g481fd6/amp-linux-x64"
      sha256 "3ee4c1584c756f021680cc7eb44cc1e9b770c9791ed68ec7944b3051f6a945ea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
