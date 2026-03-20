class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773981092-g808941"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773981092-g808941/amp-darwin-arm64"
      sha256 "d3ab4f2b8d852f3d62866ce3fba147f12fcd738952f925f5820afafc9a4ac2b7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773981092-g808941/amp-darwin-x64"
      sha256 "d309c3f2cc2cab4f4addc1d988f771c7faaf4765bd45ab6c07d129359695b6d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773981092-g808941/amp-linux-arm64"
      sha256 "0611ba5d55f4eaf3efcef2995f97f169b1fd743a1df451c6e27310f2ce2e6696"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773981092-g808941/amp-linux-x64"
      sha256 "8cc1645a1b0bdf382457fd81409e4c478af65a2563bf490444216ea69cea380d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
