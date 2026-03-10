class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773173082-gfe7cc2"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773173082-gfe7cc2/amp-darwin-arm64"
      sha256 "6421af3555fb4079d548f4455cdd888cd4813a5948aeb6587772ce1c829a7c29"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773173082-gfe7cc2/amp-darwin-x64"
      sha256 "9dab43c0b7a5e738a352c9345c0214da5dfd26050bb0c26d6827a5acf2e00358"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773173082-gfe7cc2/amp-linux-arm64"
      sha256 "f6e8d0b95ac0aeba3a9f434b98c62f9dbd7ea2470aa1309b9df336d6b7882521"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773173082-gfe7cc2/amp-linux-x64"
      sha256 "22055bd152ee32b6ca904afb008f4279b6a750fe9f3e01e077b49f443d441f06"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
