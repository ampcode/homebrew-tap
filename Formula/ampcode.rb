class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772122503-g916e6d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772122503-g916e6d/amp-darwin-arm64"
      sha256 "9880d29ea88499f64dbc0768cfcedc00245e6fc2b07e9e6d8a14ee1401b2d5a4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772122503-g916e6d/amp-darwin-x64"
      sha256 "2e89cf88b7d0df23183609de329ff6da0faed63c285752b4a06d498b042905e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772122503-g916e6d/amp-linux-arm64"
      sha256 "33d1da0f72a7cec92804c296b513aa5fd503805a42649debe500b9cb2cc069bc"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772122503-g916e6d/amp-linux-x64"
      sha256 "02041da746d9efaafa8b5d4f5537ec23ac7ce3ce9984ae079931a991c1f64aa9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
