class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774555593-g584f02"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774555593-g584f02/amp-darwin-arm64"
      sha256 "a068ccbf6b675c1cb0d568796718cc7d2383fafeced4344c70141012841a39e2"
    else
      url "https://static.ampcode.com/cli/0.0.1774555593-g584f02/amp-darwin-x64"
      sha256 "a3e1efbafa601ef3f86927e4175ddc26f8a8a07026709b90e7d76301660bbe4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774555593-g584f02/amp-linux-arm64"
      sha256 "5a1e0774897928ce21fe2fb4c7060850e3905793632230bb3eda8f12bac0c385"
    else
      url "https://static.ampcode.com/cli/0.0.1774555593-g584f02/amp-linux-x64"
      sha256 "d8d8a74d93438d02f55617557d684e476e354f709c4552f17d0ac0433a3535a2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
