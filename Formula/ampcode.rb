class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771877382-g408ed1"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771877382-g408ed1/amp-darwin-arm64"
      sha256 "358e7f463c3246e420b906e30f4ad468167470213909ead66eb23db332878b79"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771877382-g408ed1/amp-darwin-x64"
      sha256 "ec7dcf2388cb71929ccaf139035fedb02b73ebc51ab09b3a2a3cd072f36ba316"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771877382-g408ed1/amp-linux-arm64"
      sha256 "9cb5f64a93ecf3d97f6fc444e308a1ee3717bd45bec72881badd32e39521bd8d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771877382-g408ed1/amp-linux-x64"
      sha256 "c045fa3ee8cd3cee2672a909d29c44ca2959283f42175aceebcdab9d32ea9df5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
