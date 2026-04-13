class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776111352-g1b9bf9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776111352-g1b9bf9/amp-darwin-arm64"
      sha256 "9801ce6845b51f01fc8c7fd9166e594fac6c59c5c766cbdb253f2808d587b849"
    else
      url "https://static.ampcode.com/cli/0.0.1776111352-g1b9bf9/amp-darwin-x64"
      sha256 "727cb61ac61f603242c1697cb25306ad64d2ae26857ff1d749525c964a6863ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776111352-g1b9bf9/amp-linux-arm64"
      sha256 "27791584ce103af91fa6d3b311a67d3b0e15b9657762ecfdee1e944927398cd1"
    else
      url "https://static.ampcode.com/cli/0.0.1776111352-g1b9bf9/amp-linux-x64"
      sha256 "d595dd89e838e41e9783a0485c18a5f9a296c7516427f547f4eae272b785583a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
