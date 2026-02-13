class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770999072-gb7f1e1"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770999072-gb7f1e1/amp-darwin-arm64"
      sha256 "bb8c2f5fe13251e68fc3beb7d39be123238929163c05b2cc5ce6327cd8f2b0d5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770999072-gb7f1e1/amp-darwin-x64"
      sha256 "b212fabe2b3134a9d6e7622f479e40c3d3ab7c3b0c39d9d628c847593fb6701d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770999072-gb7f1e1/amp-linux-arm64"
      sha256 "abb96a38900efd51d00c526ba99ee0add7e85e419544e17057f049e989333d17"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770999072-gb7f1e1/amp-linux-x64"
      sha256 "54293a848cdb5d3ec4ff0cfef1374abd82d29dfa617a341008410e9850225ecd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
