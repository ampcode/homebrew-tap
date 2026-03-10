class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773169653-g36ddb4"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773169653-g36ddb4/amp-darwin-arm64"
      sha256 "b82be7285c51a2a99339fa51ad09c327b810177948ccd85693671e61c397a4f3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773169653-g36ddb4/amp-darwin-x64"
      sha256 "dca4b8224789e29fefc4d81662d06720d50df8703b48e60a1ce43cfad21b9878"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773169653-g36ddb4/amp-linux-arm64"
      sha256 "79de833381f38d690cd0a548d38073cde3c225c6594bc94a6b0f489c18dbf983"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773169653-g36ddb4/amp-linux-x64"
      sha256 "3913af9a33a531c94b33c87d07bf9a3c57beba04f1415276483c2ae22785f946"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
