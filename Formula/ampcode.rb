class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772179844-g9339f9"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772179844-g9339f9/amp-darwin-arm64"
      sha256 "3da5c13c1d0fb81d1d8dde8422c71b35ecf26fb487e4cd38da40e06dd23c6b25"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772179844-g9339f9/amp-darwin-x64"
      sha256 "5810092032516f349c300d911e441fe0495f9f38ec01e6a9ff67e85a0c5ac847"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772179844-g9339f9/amp-linux-arm64"
      sha256 "66a08eb79ad270394f47f3bd9662e5e2c8a0ae578df33ed1674438401f218165"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772179844-g9339f9/amp-linux-x64"
      sha256 "83cf1c05638bd86deb42f044ca7c46959575a3296cb600213f5273a8ab3a14d9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
