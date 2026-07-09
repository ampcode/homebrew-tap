class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783574196-g30f6f2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783574196-g30f6f2/amp-darwin-arm64"
      sha256 "1f8686788f05c3480c18d3d32a6b13e6d42dc8a0679235bb1199db7ccf260bec"
    else
      url "https://static.ampcode.com/cli/0.0.1783574196-g30f6f2/amp-darwin-x64"
      sha256 "b5ed74fde33886631f422ed311b2d7fba9e18bf0f843f49544c5adf8f13e0c2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783574196-g30f6f2/amp-linux-arm64"
      sha256 "982c4b5b5a834df46b2bfe101e49753450fe126a8c8e937d09b5c3f99463dfee"
    else
      url "https://static.ampcode.com/cli/0.0.1783574196-g30f6f2/amp-linux-x64"
      sha256 "a4f8e9329aeb1dc87ea4fa1dce9997bacc378dc684c28f14384c5818575ca618"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
