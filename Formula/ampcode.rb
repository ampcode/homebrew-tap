class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773549851-g401cc5"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773549851-g401cc5/amp-darwin-arm64"
      sha256 "afa3c68f1480ac2c263d4c681c4d847c5c2ca22466cdd7521a95478613ada62d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773549851-g401cc5/amp-darwin-x64"
      sha256 "f5111d887231e08741560b015de4f7bcd94dcd98b9de65bb452cc375a91d972c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773549851-g401cc5/amp-linux-arm64"
      sha256 "9b0685654ea4ffadb8a3cdf842eb4e9d0da2c013998b9f7f7410add214593206"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773549851-g401cc5/amp-linux-x64"
      sha256 "11e67578c5eb022d35d9be472d9b94aff5037613490d4bef68bc4546f45edbc9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
