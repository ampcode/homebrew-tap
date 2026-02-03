class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770150152-ga3a033"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770150152-ga3a033/amp-darwin-arm64"
      sha256 "83784b71d1ab0866bf54f36febbd968762df98f374395e65a40ffca4de02f8c7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770150152-ga3a033/amp-darwin-x64"
      sha256 "1d841b027432189f0ca59876c78014647da65e076a1809dc6e4e854a41b4894b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770150152-ga3a033/amp-linux-arm64"
      sha256 "33f0823aad1430ff9b3472394e4a3d4313db290595934eb67dd352805017946b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770150152-ga3a033/amp-linux-x64"
      sha256 "8248c02021c2ff41d073731a7f7761aa9495380b703a30785809e2bc89435aab"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
