class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773504171-g8ef097"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773504171-g8ef097/amp-darwin-arm64"
      sha256 "5b6ebd3eca1f7802c10e8a5e3369ccb3fe877947f451e65aad4c7a0e06c6f647"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773504171-g8ef097/amp-darwin-x64"
      sha256 "26c69b398dc8ee7f143a1ea4af5bd7cfbcf58d38441efd7d92e52a1d747ec881"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773504171-g8ef097/amp-linux-arm64"
      sha256 "35ff1848e7a67ff9d56dc5cb0be4465dd30fd4b518904e81b1d41552c4cde2da"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773504171-g8ef097/amp-linux-x64"
      sha256 "fde99e2f890752989682e21bfcf650c96485ae7f8a077430df358021f4c8005e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
