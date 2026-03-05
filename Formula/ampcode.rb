class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772724405-g1c19f6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772724405-g1c19f6/amp-darwin-arm64"
      sha256 "8ec435da663cb00aaa7d0203859dd36272b3c4359b35917792b775f946274919"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772724405-g1c19f6/amp-darwin-x64"
      sha256 "9c4bdd12d52b1b57d30d86d84ee5c86f46d900a492a28c09242e02188880742e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772724405-g1c19f6/amp-linux-arm64"
      sha256 "6d405a2ccc57091fb1b928bf103672071ba6b4ec6d7e7e319e730a8768a11834"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772724405-g1c19f6/amp-linux-x64"
      sha256 "445640ba2b79ee655f5aacfd3176ccec508fcd345e2efefcc5ad2b0114fd6d80"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
