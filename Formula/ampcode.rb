class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773100957-g1437de"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773100957-g1437de/amp-darwin-arm64"
      sha256 "44a4ee95ed63897026d8d38e85572aeaec4e0ee7766d1a8934a796a1aee1d20d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773100957-g1437de/amp-darwin-x64"
      sha256 "e04694627e7db477876a23c8676ab276c293ddeac1c6ec553e5a3d97b6affe07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773100957-g1437de/amp-linux-arm64"
      sha256 "ac28ab5ffe410f0836b7c06087b3644f26bc7b8ee8e7a19fa1ad000afd0e6ade"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773100957-g1437de/amp-linux-x64"
      sha256 "52a4adc10f183d6526afc837fd220fff6677a5b1728f1f296ee09b529297ccf9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
