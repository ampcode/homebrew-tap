class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780837959-gadecaa8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780837959-gadecaa8/amp-darwin-arm64"
      sha256 "bab61d40ede78aa2a8e8ad55873d780233e18b04524c23b26396ba56795e533f"
    else
      url "https://static.ampcode.com/cli/0.0.1780837959-gadecaa8/amp-darwin-x64"
      sha256 "31e315616b6114afd5d2cbf1ecc95cb8c0f522ffd141b268e93a5a1f92220b83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780837959-gadecaa8/amp-linux-arm64"
      sha256 "8d174dbc373e31d885ddab68597f18f4cab17e05770828c992f5eaf222f3f15c"
    else
      url "https://static.ampcode.com/cli/0.0.1780837959-gadecaa8/amp-linux-x64"
      sha256 "2a98ea76196750c53689d4b2457ff8927c14c038016bd40243468c94e8047872"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
