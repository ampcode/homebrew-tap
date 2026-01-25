class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769356892-gb173eb"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769356892-gb173eb/amp-darwin-arm64"
      sha256 "cbd10f7576d16cc34a73ee6bfb849fc75c10489d8765a7d05a6d9d8c42b2c796"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769356892-gb173eb/amp-darwin-x64"
      sha256 "237ebaf613b510b7a9402a339b5d7da7c65ea0ea08f439b67d0d1f904aaaaef6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769356892-gb173eb/amp-linux-arm64"
      sha256 "da7f33dec409dd3289b6503444359b91ee13ff1271286cc9f5269c55d3418489"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769356892-gb173eb/amp-linux-x64"
      sha256 "78ec896a5ca3b48ed3991841c31dd7255846661fb4221ccf21150df9d4afaf8e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
