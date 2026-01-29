class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769670080-g18d695"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769670080-g18d695/amp-darwin-arm64"
      sha256 "47301404082b042462bb051f71b1cd58d45a6db3e15dad49909a90dfee8c76ad"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769670080-g18d695/amp-darwin-x64"
      sha256 "b8587404c35bdcdae0d920eaf2846a64167b8fd9402c470a41a19cddde3cf9e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769670080-g18d695/amp-linux-arm64"
      sha256 "d2f8cac6a7a1bf6a4465d752637bf9f88a49f733e10eee2d1451ea87e63d47ed"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769670080-g18d695/amp-linux-x64"
      sha256 "74db022a10f9a09490a384c9bd38d7fa3e346df10ae44b977ff323709faf51e2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
