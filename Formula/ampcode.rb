class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791849701-g1448da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791849701-g1448da/amp-darwin-arm64"
      sha256 "8841c4e77eafbec8283df66b2f3f3a64c3fe3068dbc12f1359c09b5478fb55b1"
    else
      url "https://static.ampcode.com/cli/0.0.1791849701-g1448da/amp-darwin-x64"
      sha256 "0355c24e21d273b5734c73ba1d7c34d3aef1bc459c442c6822c11cdd39e51260"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791849701-g1448da/amp-linux-arm64"
      sha256 "472368998e8954d9b0b0b532c7de97e61b2aa21a30d1ef93062a41d3c78cbde5"
    else
      url "https://static.ampcode.com/cli/0.0.1791849701-g1448da/amp-linux-x64"
      sha256 "d0d34e51d3401163b4f79c6a0ac38b9deaf6964dd2f6d17a2fe6818762c8878a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
