class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773994045-ge5da52"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773994045-ge5da52/amp-darwin-arm64"
      sha256 "2a814ba400a0d536677dc01209fc53fc06178b0750d051d6f998f3898e4e3004"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773994045-ge5da52/amp-darwin-x64"
      sha256 "e74df8e4b63ffca251ae3aeb272516ac490db3a88a02a2e582bd7e94d47301b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773994045-ge5da52/amp-linux-arm64"
      sha256 "d985b4ff623c64476e3fd165dee4af310aec4884b9e426ac4221e67d247ebc08"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773994045-ge5da52/amp-linux-x64"
      sha256 "3d3153183cb12ce6ccdddcc8e5cc97680781d9bc6c5cfa56246e92c8b487c3cc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
