class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774426196-g2b2a50"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774426196-g2b2a50/amp-darwin-arm64"
      sha256 "0d7011e207ef9eb4e4a2169a649dd3c65b090825342136cbe85b066ca2efffb6"
    else
      url "https://static.ampcode.com/cli/0.0.1774426196-g2b2a50/amp-darwin-x64"
      sha256 "cc24d52f3563d38ecc73a200c2b0b0a6d5f83b8129b623e0d7a416a2ebcb32a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774426196-g2b2a50/amp-linux-arm64"
      sha256 "256c357b7f4492955f7f636ce05a62c28d68e2b5300292ea90e636e76c9af153"
    else
      url "https://static.ampcode.com/cli/0.0.1774426196-g2b2a50/amp-linux-x64"
      sha256 "b318da6f2b5953442a1780c92ebc94704d615cbf670adc65f9220be5445e7fcd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
