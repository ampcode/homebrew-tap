class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773086656-gba9cfc"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773086656-gba9cfc/amp-darwin-arm64"
      sha256 "c39b31aa76a55e5f5e4dffd808c69095f3ac06b6a66c97b64a893ab3289ac04e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773086656-gba9cfc/amp-darwin-x64"
      sha256 "6ad9ae5e1de50e6a316e5507e9f8902dd6ed89625e9bb4b285625b77cb08be95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773086656-gba9cfc/amp-linux-arm64"
      sha256 "05bbf8feaa38681e2ad7a082da408a4ead56d0bec536379c6feb9c1c294d587a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773086656-gba9cfc/amp-linux-x64"
      sha256 "ffd0f326a545fa18c3c36c308e36b3a0267d4c94fccc4238331170742ccb3d28"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
