class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793851242-g61361b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793851242-g61361b/amp-darwin-arm64"
      sha256 "e45ee19a0a244842cf1e66543d345029781f85f231da806be39d51b0723496fe"
    else
      url "https://static.ampcode.com/cli/0.0.1793851242-g61361b/amp-darwin-x64"
      sha256 "89cc25d80aec93c2f75bbf674ddae07cec10f33d839aedc7e489142b23d6aa8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793851242-g61361b/amp-linux-arm64"
      sha256 "4e8f48111895c037010d044c7efee7c02edf9be89c08675c3727cb48dc825c25"
    else
      url "https://static.ampcode.com/cli/0.0.1793851242-g61361b/amp-linux-x64"
      sha256 "1a32061962a7566f650024763a32b05c6cac4a982bbf6f3cb89bd055a7dc1e60"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
