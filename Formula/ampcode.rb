class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774051433-g91f10a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774051433-g91f10a/amp-darwin-arm64"
      sha256 "a8f97150f902ac105526351e3ea1e586472534d72fbe67824ca1f32b6c80299d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774051433-g91f10a/amp-darwin-x64"
      sha256 "5e4d166c8c743740a09e0762352c48bc9a5560e90086649530573681edd1dc83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774051433-g91f10a/amp-linux-arm64"
      sha256 "a37443ff20c05e5f9050ff3aff44128ad27296098733349213c18c4178940240"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774051433-g91f10a/amp-linux-x64"
      sha256 "03bb6ce98df8ba3a2009b83179ce1a3f7a27eab68f6a196f35b4d3d82207def6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
