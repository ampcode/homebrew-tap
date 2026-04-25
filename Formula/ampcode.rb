class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777107443-g7acabc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777107443-g7acabc/amp-darwin-arm64"
      sha256 "6a6425e42fd5aca66756901c04d5f86f837bbe2bbcae46f532bb9e95e4f8d1f4"
    else
      url "https://static.ampcode.com/cli/0.0.1777107443-g7acabc/amp-darwin-x64"
      sha256 "bbca683b6fcaa6ade8fe300e18fc6521fb5c0ea9d974d57f743dd524d6a3ef8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777107443-g7acabc/amp-linux-arm64"
      sha256 "0667c7f49c3d2202a4255a02476fde6342916011b547282808fd91f03662b5f3"
    else
      url "https://static.ampcode.com/cli/0.0.1777107443-g7acabc/amp-linux-x64"
      sha256 "b9035c57119302f14a1224e3dd615bcebdd905be3b986241a33437bc116dbec3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
