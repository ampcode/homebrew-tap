class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770007084-g155b28"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770007084-g155b28/amp-darwin-arm64"
      sha256 "85e011459f624f87e69d4e18e6654e9369c37ead3e8b0f28e4ec27a543e8bd7c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770007084-g155b28/amp-darwin-x64"
      sha256 "890a02cf27ead08ccd485043a46f5dc6a2fc61f362bb658daa969de4430fc5e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770007084-g155b28/amp-linux-arm64"
      sha256 "8c8b99ca25aa5fc6ad43057025e3d1d61c4226a427e1c10e2ee43c7af4134152"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770007084-g155b28/amp-linux-x64"
      sha256 "8357b4c997534307a980c6e6f320527ecb09691dc2431abea89ae63a31348778"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
