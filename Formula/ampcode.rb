class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773604945-g8ab646"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773604945-g8ab646/amp-darwin-arm64"
      sha256 "f235079bca21038c484f6fbab0b2af6c998cf9fb462eadf455cd5cc579bf8e68"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773604945-g8ab646/amp-darwin-x64"
      sha256 "06c069a5aec9524a08616267bdd4646d0df6d3278dcd4e29539cb40112991734"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773604945-g8ab646/amp-linux-arm64"
      sha256 "f2272e06d552ef8c25b706063da6f74179141b9d259d9f43063f75fe1f9341d3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773604945-g8ab646/amp-linux-x64"
      sha256 "04f00d04090d9e72413683adb2c5cc0df66238d042240f416bdccfdb003b2484"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
