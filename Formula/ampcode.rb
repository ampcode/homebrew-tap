class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773905920-g6757dd"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773905920-g6757dd/amp-darwin-arm64"
      sha256 "398698665f0febccef0e3d88a15e580ef30a155f8f7a7de3314cc2a0fe3b954a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773905920-g6757dd/amp-darwin-x64"
      sha256 "2530a72c9c3221310baf866042bb6b2fc33eb588b5e05e41ada15ee69c004030"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773905920-g6757dd/amp-linux-arm64"
      sha256 "76f468edea43575f07ee64bdd2e051b6764c0a7a65c2e88963bed8e5c18568d8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773905920-g6757dd/amp-linux-x64"
      sha256 "4711de0aa6edb43b054ec9f426b8962abc16c1925bc9b142ccfafed32619bc80"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
