class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770984249-g3954dd"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770984249-g3954dd/amp-darwin-arm64"
      sha256 "45bffe2b67245f9e468ed20ef9abbf32e8d06ebbb6de46a3a28ab63802e92fee"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770984249-g3954dd/amp-darwin-x64"
      sha256 "0fed21b5dcbf50d27c9b371ec2129133c0c8944a98e6e6387414196701188313"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770984249-g3954dd/amp-linux-arm64"
      sha256 "fa75dd86af72618d5287f81d2983029e44bca3993845d0b2c047a531cff47c1a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770984249-g3954dd/amp-linux-x64"
      sha256 "5ac5040f9b6f9927499b2e9393561ba83ce00c99237dbf7affe4dc424e5fbdc2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
