class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787117828-g1c5807"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787117828-g1c5807/amp-darwin-arm64"
      sha256 "de9833cbe70af6878b32351fe58117d4609d8d1443e3fa1d804d8af9aeecf31a"
    else
      url "https://static.ampcode.com/cli/0.0.1787117828-g1c5807/amp-darwin-x64"
      sha256 "c6f031708160688088d9885e90b63ad3fba1190dba4f283750e617e805616d6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787117828-g1c5807/amp-linux-arm64"
      sha256 "a2a9d9b364ad9fc838c8b0d6ecfb8d206869c89d4f35b2d2f1b68c42f06805c9"
    else
      url "https://static.ampcode.com/cli/0.0.1787117828-g1c5807/amp-linux-x64"
      sha256 "e564f3eea184aea89ebf63a3481c487c299ddb65d6efcd48de221f6942fa1750"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
