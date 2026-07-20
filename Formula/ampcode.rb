class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784517512-g2c9906"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784517512-g2c9906/amp-darwin-arm64"
      sha256 "c3b12d6937e5850f0e1535a49d1be5ac79dd48ac8f4add82b58cec2981cfbe89"
    else
      url "https://static.ampcode.com/cli/0.0.1784517512-g2c9906/amp-darwin-x64"
      sha256 "7100d15a0540b12ee0775a61ee28f9a57331fceaf60feeafc63b7063097c673e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784517512-g2c9906/amp-linux-arm64"
      sha256 "38476aec244b89d4153649a23bd78956bc900ea28d70fbe5ba39e27aea9f302d"
    else
      url "https://static.ampcode.com/cli/0.0.1784517512-g2c9906/amp-linux-x64"
      sha256 "c12689444a4d071927df71240f0f4d35c40989914cbd3f7f644c435e9c99d2fe"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
