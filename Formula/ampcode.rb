class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790035281-g772f48"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790035281-g772f48/amp-darwin-arm64"
      sha256 "4cf7ff5683c15cfbb415ecd053a2596772e97bcc03c72e61899295fda47bb311"
    else
      url "https://static.ampcode.com/cli/0.0.1790035281-g772f48/amp-darwin-x64"
      sha256 "38b97b1f4e788596c0f15d401aa06ae0c6e746359da04d0e2fb56beea9c35dec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790035281-g772f48/amp-linux-arm64"
      sha256 "1f7904e855dad451ea9e8c0af85c6d04761de8b109c9128b08394d4543fee306"
    else
      url "https://static.ampcode.com/cli/0.0.1790035281-g772f48/amp-linux-x64"
      sha256 "eff4fb0e614e4e1b6d6f97cd6aebfb9a544ded41dbb7f2da6c8986980170e166"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
