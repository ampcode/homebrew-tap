class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773432280-gcd86a7"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773432280-gcd86a7/amp-darwin-arm64"
      sha256 "895d09c00164d0b20e77424b3ca8b9b46b802d12ccf8c707bdfff8c98cae24ec"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773432280-gcd86a7/amp-darwin-x64"
      sha256 "c018633310dea84e0265a95579e07b81cb43a7bd5e3c528e511bfdaa62489fc1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773432280-gcd86a7/amp-linux-arm64"
      sha256 "2d02359d1428908b08e68ab10c5f9b34761e6aa410e44b65c93a1d4b4cf2b8f9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773432280-gcd86a7/amp-linux-x64"
      sha256 "137f6a02a2baf3fdcbb8caf6baa303c287023d8de20c160cedbe46083728c69d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
