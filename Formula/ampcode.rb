class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782951766-gb5818c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782951766-gb5818c/amp-darwin-arm64"
      sha256 "bc8f4161ce54dbe895027ef2b68f4da3f7d8bd1546a0c67b928f168b8af75133"
    else
      url "https://static.ampcode.com/cli/0.0.1782951766-gb5818c/amp-darwin-x64"
      sha256 "6d7cf97e13a4fe30aa64e49b7b2c85e3ba475bcef4f39571021ad0a76225bbe1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782951766-gb5818c/amp-linux-arm64"
      sha256 "f30f6ab1db2211ecce8781b36f4ebfc655ca8f497b59707457d12a5149a23093"
    else
      url "https://static.ampcode.com/cli/0.0.1782951766-gb5818c/amp-linux-x64"
      sha256 "45d3e77efc05346677885aa00ae22ad972baa53308c5b8dd0bd127113a7b8618"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
