class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774099812-ga029f6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774099812-ga029f6/amp-darwin-arm64"
      sha256 "fbec5752dd1e5d24754851415d3eda67b6a29ff13ad8c3d86878629228205665"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774099812-ga029f6/amp-darwin-x64"
      sha256 "44ea308d44ae5e9525984854d3b2675613fc2fb5422317e525a63f09565b2495"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774099812-ga029f6/amp-linux-arm64"
      sha256 "6f702e0e3f275c347846b5fe015a511bed021a38558fd4504f31bca081a26462"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774099812-ga029f6/amp-linux-x64"
      sha256 "69954a229a9679c2b8fdc72a1ff9da0dafe386ad947a44db8094208bca169e12"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
