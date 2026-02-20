class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771589082-g30d77b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771589082-g30d77b/amp-darwin-arm64"
      sha256 "d65de7afa65f7cbf87e7134b9e53a91ed1eff04d3d1157c0d2828f1432d2466b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771589082-g30d77b/amp-darwin-x64"
      sha256 "6ad43b24129f5c11acb329961180bdb1d072ab0c3de1fea7d229e897f2f32539"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771589082-g30d77b/amp-linux-arm64"
      sha256 "b5f7fa5d2c19ba47057aa4e1656cc726caff6f842e81e236a755c782d63ff4e0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771589082-g30d77b/amp-linux-x64"
      sha256 "e43dd988295dbd26205bf199c7de7fc02db565d8c9efcc6a3675501566cc3731"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
