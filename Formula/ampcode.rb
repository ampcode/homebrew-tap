class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774224286-g947cba"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774224286-g947cba/amp-darwin-arm64"
      sha256 "4e84bfb43b35e5f6a148ecd8bdd2e7b70ad08991a3fb4986cdc0108527293162"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774224286-g947cba/amp-darwin-x64"
      sha256 "ab5b4a901fe101af044ebbc1e44b07c27fc453488eb202f9e3a64665569246ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774224286-g947cba/amp-linux-arm64"
      sha256 "e7462f2fe3c4258aafd2d619061896686a1d6e71def16799d6da621d90b98310"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774224286-g947cba/amp-linux-x64"
      sha256 "ccd9a7b334ae61759690113d39a8cfbc05dbd6e5ccd70b0af8c8617a74151e6a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
