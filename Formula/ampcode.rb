class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772496276-ge2fd2b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772496276-ge2fd2b/amp-darwin-arm64"
      sha256 "1c86e266fe359f1759f19015ab9de0a9c1f01ecfa047d24416ebf2cfc88ff851"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772496276-ge2fd2b/amp-darwin-x64"
      sha256 "3d0038fbcfa1fbd27a2b43dfc6274b4953bc7c561465cc6e0814a9c1d3630c08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772496276-ge2fd2b/amp-linux-arm64"
      sha256 "4632b6ab9cf8eff32474bdd995dee613bbaca0d18c2b5bd3c43e0ae6c61b7b75"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772496276-ge2fd2b/amp-linux-x64"
      sha256 "fe05241064e50e593f2ee9f31f112f3e758ef0f01e3df1523c0f772cfaa79753"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
