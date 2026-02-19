class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771502784-g8598aa"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771502784-g8598aa/amp-darwin-arm64"
      sha256 "7d119fdd3012a7852c51cc08db05ab0d7da64aeaccae2ab39a1b4ebcdab9be13"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771502784-g8598aa/amp-darwin-x64"
      sha256 "9119ca6f246d9335c85437457587cc9bb31f66c97dbddcf1d823f067da0159e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771502784-g8598aa/amp-linux-arm64"
      sha256 "7250ccee2aed0261211d63a84130309ccf1d4836a8097574a19406887496408c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771502784-g8598aa/amp-linux-x64"
      sha256 "0e9a45598c522f026ce98578498e9c93db90f81427bb0834cb2122134222d62a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
