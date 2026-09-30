class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790726504-g9299b2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790726504-g9299b2/amp-darwin-arm64"
      sha256 "f74245cbd5ed9e8280434d7d1131d8015224483742e6ef77a35aada676653c13"
    else
      url "https://static.ampcode.com/cli/0.0.1790726504-g9299b2/amp-darwin-x64"
      sha256 "ecaf06d141eda2be7abb5bf78f8a120fad87200523bd295e7c83bdaf849cedcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790726504-g9299b2/amp-linux-arm64"
      sha256 "1deed975b1315c4bfbd480697fe4fb9936abfd5330ac8a92daa0758b25686d40"
    else
      url "https://static.ampcode.com/cli/0.0.1790726504-g9299b2/amp-linux-x64"
      sha256 "1b771f540039eb63d994cd26fb08cd2eee08ffffb46e05fccd6955106a1ed615"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
