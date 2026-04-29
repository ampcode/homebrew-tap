class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777472805-g34ceff"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777472805-g34ceff/amp-darwin-arm64"
      sha256 "f326b52b68d9cfface3cc0ca2e0ca9c9996ab8792b0348fcc73883976d0da7c7"
    else
      url "https://static.ampcode.com/cli/0.0.1777472805-g34ceff/amp-darwin-x64"
      sha256 "15a138a29d2a2d55b0949b62aea7f9c52c024d163eef2b00323efebdcbe46157"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777472805-g34ceff/amp-linux-arm64"
      sha256 "fc051505b7a3c968ec394eed5f558eddaf14a00f292b93452ec06aeb8aaf5933"
    else
      url "https://static.ampcode.com/cli/0.0.1777472805-g34ceff/amp-linux-x64"
      sha256 "2e8705a7a0518988ebf3ff8c6c99c474459041134c5ad280c03dc2f72136de7d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
