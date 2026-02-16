class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771270569-gf1c940"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771270569-gf1c940/amp-darwin-arm64"
      sha256 "d56b510b83cab5a6a98dea00c5ab5a33f4ff7ab98d141b7a15b923aa3c42308e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771270569-gf1c940/amp-darwin-x64"
      sha256 "634aafd13ed049d05e6efb665fdbcbb41992309c94ffebe33778f6c9aab62892"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771270569-gf1c940/amp-linux-arm64"
      sha256 "4753ed874daa32e686bc3f91f7c5090966a77e680c97aa2d13c64d35b9ffb80a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771270569-gf1c940/amp-linux-x64"
      sha256 "a39bc9ef9d480960a7ff342ccdca257d9ba522f3929a769af921bfbb14119310"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
