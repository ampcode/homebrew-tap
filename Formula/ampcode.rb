class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777973993-gd88fdf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777973993-gd88fdf/amp-darwin-arm64"
      sha256 "09168f82636cdbc6aa4a4a10be85ebcb0d824829c68eecb919cd5d1fd48b30fc"
    else
      url "https://static.ampcode.com/cli/0.0.1777973993-gd88fdf/amp-darwin-x64"
      sha256 "e924ccd3ddb74be3d4edcbd961202750898eca43bc35524f88e3be120bb2ad8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777973993-gd88fdf/amp-linux-arm64"
      sha256 "711ce347c215d97fefb84ca23e9c9f213f261ac416c80842ab688302c0233895"
    else
      url "https://static.ampcode.com/cli/0.0.1777973993-gd88fdf/amp-linux-x64"
      sha256 "cce824bf276f09b23d6d54cd6f738c27c389369a8da94b3089b497345d3ea104"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
