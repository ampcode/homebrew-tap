class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785733786-gde6a10"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785733786-gde6a10/amp-darwin-arm64"
      sha256 "f3cbe7ec3ff5108d0e8634e0136661dbd2fbcf32a675e34ab33bee5e216489f5"
    else
      url "https://static.ampcode.com/cli/0.0.1785733786-gde6a10/amp-darwin-x64"
      sha256 "d25fe0f6eee9aee690e5a34d8ce355358309a44e351553808cf9bd4196c66589"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785733786-gde6a10/amp-linux-arm64"
      sha256 "2651a8942bf2a4a2ffb169901360ee06c31586f4441d5dc566203a611a724628"
    else
      url "https://static.ampcode.com/cli/0.0.1785733786-gde6a10/amp-linux-x64"
      sha256 "2fbac88dd518c90719e5e70b4f5b14730c18d4ab33748698fbeb22309c8b1609"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
