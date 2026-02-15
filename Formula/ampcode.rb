class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771142602-g6c163c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771142602-g6c163c/amp-darwin-arm64"
      sha256 "736eb197b9114efa82667f1b3af4f3767c0c946202faa07894a7f0807d92e90d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771142602-g6c163c/amp-darwin-x64"
      sha256 "c2365f2ab98b06f9641b862ea778da09d74538d1dcfbad6ab3a447a1ccb3280b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771142602-g6c163c/amp-linux-arm64"
      sha256 "ecea51691403595ab34e0c5507a3a276fe5e361ab67d739781aecd046d81eebc"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771142602-g6c163c/amp-linux-x64"
      sha256 "57384554d94562d97cb90b293dbfd189b26bc4888b9329a64d4e34fe0412eb12"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
