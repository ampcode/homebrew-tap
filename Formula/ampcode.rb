class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771344918-ga2d2c8"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771344918-ga2d2c8/amp-darwin-arm64"
      sha256 "c018d2d75d9311b891e53b29c03c638f2e6eb56b52a8cf823aed942d6d32890e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771344918-ga2d2c8/amp-darwin-x64"
      sha256 "1940105c08a2cca80615bed2890211beb1f762f234f2202ff3e618609a11dede"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771344918-ga2d2c8/amp-linux-arm64"
      sha256 "6533f123f43261e130f26a858628ff637c21392abcdf71e4dc737a6174e16742"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771344918-ga2d2c8/amp-linux-x64"
      sha256 "c430605ff2c7a97473a8d99c769c5ac465553198da1bcfd6de15ff3b7f5fef0d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
