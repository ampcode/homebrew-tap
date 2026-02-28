class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772265701-g032735"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772265701-g032735/amp-darwin-arm64"
      sha256 "3deef218633660da2e8ea36fa2a06f581cffc56145a90dd8d18c06b138b8a752"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772265701-g032735/amp-darwin-x64"
      sha256 "d640e1b3b87d2d09f8eb6f87ec86ba51f10f5cc2da75b03a88feb7b8f5aa4c14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772265701-g032735/amp-linux-arm64"
      sha256 "5742bc479f0767ec465b5f35ebde35c240e78d7541ad7d10d52e3ba29b000d31"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772265701-g032735/amp-linux-x64"
      sha256 "8df76b441d53a712b987e0eaeace30a2798d358bba7b72baf97b5736186579ab"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
