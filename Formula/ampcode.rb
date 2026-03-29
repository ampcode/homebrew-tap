class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774771637-g07ffa8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774771637-g07ffa8/amp-darwin-arm64"
      sha256 "17373171f0e8628109e337db4ba152bb205e047e455265b104d81dde862407ee"
    else
      url "https://static.ampcode.com/cli/0.0.1774771637-g07ffa8/amp-darwin-x64"
      sha256 "fef170693a97956feb302e40088aebc72a14a35d80738630e8642c94cda7c059"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774771637-g07ffa8/amp-linux-arm64"
      sha256 "e0fe9bd7d66177a7a803e1e90cada07c64677aaae4e878b9533126ec9f4de043"
    else
      url "https://static.ampcode.com/cli/0.0.1774771637-g07ffa8/amp-linux-x64"
      sha256 "f33e2aac97af403e6032b157bd24d5206aae5766d257c537532d653fcd22c989"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
