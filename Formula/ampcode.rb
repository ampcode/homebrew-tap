class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773231930-gff2610"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773231930-gff2610/amp-darwin-arm64"
      sha256 "e225e3bbed22f6993a900c93377f0696fd3cfc5d23faef2414ea5c000aba52a6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773231930-gff2610/amp-darwin-x64"
      sha256 "06e92f85e09eea9706f676c7d74798c73c4a7583891bcdafd9519a020db33e47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773231930-gff2610/amp-linux-arm64"
      sha256 "4285d3f60d1da3d550c312217a72e46bd559d56b4a14645ec984c8752b3e45d5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773231930-gff2610/amp-linux-x64"
      sha256 "d9cbc97745dcf2805734617674a4b5678d65a1510c179c2f2b90fd482adf57b2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
