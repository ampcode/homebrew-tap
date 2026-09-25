class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790316087-g0445e9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790316087-g0445e9/amp-darwin-arm64"
      sha256 "5097939f47a3d23abd57809c09b8c682867d339ea47307f12a346dea4e06a91e"
    else
      url "https://static.ampcode.com/cli/0.0.1790316087-g0445e9/amp-darwin-x64"
      sha256 "fcfcd7fb31c8e033f12b639d4704c0ad2a4a9de42588915c59aecbc3d81750cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790316087-g0445e9/amp-linux-arm64"
      sha256 "24b0dc0dbb7df5160429c6f6f7a3dfdbefbb7b91a0e938dc1201135b5e0d6ee0"
    else
      url "https://static.ampcode.com/cli/0.0.1790316087-g0445e9/amp-linux-x64"
      sha256 "dc7d0ea3877f48199012826feeee0bf353ba2489e59cc14e11e01f495b8da216"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
