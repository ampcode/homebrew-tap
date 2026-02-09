class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770653841-gf23655"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770653841-gf23655/amp-darwin-arm64"
      sha256 "c763f5e85acda5a021ed80cb8955bf167be57006de831e78c0f642bf0a0b6c43"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770653841-gf23655/amp-darwin-x64"
      sha256 "b21d23ae9713c1a20a99e64a1aa46c39e40ab7b869c4b96213c6021edec6d7e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770653841-gf23655/amp-linux-arm64"
      sha256 "1a8534403a0033242c30898f0618f177ed131a70737e5fca1427ef3627f99e5c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770653841-gf23655/amp-linux-x64"
      sha256 "fae1c54aeefb91a3132316f70e07bbdb15b86e1c1dba13233ef29997a91feef4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
