class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771389312-g5c7d49"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771389312-g5c7d49/amp-darwin-arm64"
      sha256 "ce672a2b855e472404f6d5244b5b48f71f382016d65f275acd225fdcafbccf85"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771389312-g5c7d49/amp-darwin-x64"
      sha256 "1de627a2012b30cf504f0a3ac8768e14cef2df96b1b0143992c0ae5216d8a96b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771389312-g5c7d49/amp-linux-arm64"
      sha256 "9288e84426066fe0094ca706ba43e2e13a0d10562a19c139a6e196da5e4bdf2b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771389312-g5c7d49/amp-linux-x64"
      sha256 "4bb2bb35c4b4906d42d2e65ddde679e3758cc5bdef5cfb375d87979a644e6ebd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
