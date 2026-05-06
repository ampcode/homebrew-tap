class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778070211-gdd8fb4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778070211-gdd8fb4/amp-darwin-arm64"
      sha256 "5e617c457c681acbe52558ba3b03f9bec84db648582347dc19c52264ac5214c0"
    else
      url "https://static.ampcode.com/cli/0.0.1778070211-gdd8fb4/amp-darwin-x64"
      sha256 "bcaf636c8488c106cdeff20adcca7f3696397b79b111ca276ea08e7cfaf86648"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778070211-gdd8fb4/amp-linux-arm64"
      sha256 "1c61468b41fb403e66df3fc362c1b2a4827654e0a83160978b576f1ea894f320"
    else
      url "https://static.ampcode.com/cli/0.0.1778070211-gdd8fb4/amp-linux-x64"
      sha256 "bb36f01856dbb82e2333a778befdb570aeec06ce94ee5ef2462fb1352d2ad3f1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
