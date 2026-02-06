class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770352274-gd36e02"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770352274-gd36e02/amp-darwin-arm64"
      sha256 "49ce1442a83f4819ba5b3d67291cef8186bbc57989106671ba16df39e139dfaa"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770352274-gd36e02/amp-darwin-x64"
      sha256 "ead712bc19f1513df6b938ee6b9f6a748f96bd0645784031b6a809db0f736118"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770352274-gd36e02/amp-linux-arm64"
      sha256 "49d034351cec3eee604b54766eec8e8c642bdb9b376e7cac70201c607d260add"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770352274-gd36e02/amp-linux-x64"
      sha256 "cf628028354c7b592c08e28e1b4d851bdc16e91694222b1a0073a3de9d67e976"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
