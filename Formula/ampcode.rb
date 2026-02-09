class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770611999-g89a2e1"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770611999-g89a2e1/amp-darwin-arm64"
      sha256 "b6b5c0a6cc3d81d17b7d2dc1476768fb18ef0fec63fd73966c4d574c3216a900"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770611999-g89a2e1/amp-darwin-x64"
      sha256 "69f4b5db7b53243823615bc9bc86cc0f47d28805ae3aec4d925b385ec5a46ce3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770611999-g89a2e1/amp-linux-arm64"
      sha256 "c4709b62906f558523b0d1786fbf75dbffb42f2b4fc30e533abff16d35a3c045"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770611999-g89a2e1/amp-linux-x64"
      sha256 "cc47137c0b2cb6e886db978a9c3cc1a6eda5924c8a3cc2e9afc1465db91f131e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
