class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775088341-g31dbbb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775088341-g31dbbb/amp-darwin-arm64"
      sha256 "0430405a8a107597ecb0b378af233b0e622f40c093a8a66ee898fb3528566e1d"
    else
      url "https://static.ampcode.com/cli/0.0.1775088341-g31dbbb/amp-darwin-x64"
      sha256 "b8ff16a581cfdff25e2ecc45fbfe4b147e0c37cd3309a009ac45508acb5ec71a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775088341-g31dbbb/amp-linux-arm64"
      sha256 "0ae8f6038148a4d5d0805935be4ac4bf79291291e96bda603a7b876d3b0b30c3"
    else
      url "https://static.ampcode.com/cli/0.0.1775088341-g31dbbb/amp-linux-x64"
      sha256 "bb44fc40d64537cfb69bbdd402ecf0c3de90a2bd500f5cc4f3259ad60697a2a8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
