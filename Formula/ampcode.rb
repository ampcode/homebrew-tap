class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774282563-g7aa131"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774282563-g7aa131/amp-darwin-arm64"
      sha256 "7f90d05ad84b473c193d2f2f3b5fcf044f5effc0f31814ac9dfa851f0c35bfbb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774282563-g7aa131/amp-darwin-x64"
      sha256 "087f8ef2bd0d7513c620bb2748ce976c2a58093465c27ab9acf911693a519a3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774282563-g7aa131/amp-linux-arm64"
      sha256 "393a58e240b6749cc4ca921d242301ad57986b51891f191a022ab0a94248929b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774282563-g7aa131/amp-linux-x64"
      sha256 "40bdee2319b022e3914ffd182c7f6e058f14b24cd63a65f2ef47e2ff8f0b3ca4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
