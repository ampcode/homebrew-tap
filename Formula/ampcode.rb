class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772512271-g42aee6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772512271-g42aee6/amp-darwin-arm64"
      sha256 "2612ca29bd94f70e7bb19443fb168086e7759dac1d2c28b17f798d8794c454be"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772512271-g42aee6/amp-darwin-x64"
      sha256 "219560761457ec723be0ff12dd9627257eec1be874dbd24c8b37d4a9ef36a79c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772512271-g42aee6/amp-linux-arm64"
      sha256 "a44720c722b1c2f853cf3688f58032c6b2ff36d7b24c622a05daf000c0a0d347"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772512271-g42aee6/amp-linux-x64"
      sha256 "d3188dadce77545dea151755f3ebbd46020339e2d200495f92c1824e575c3405"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
