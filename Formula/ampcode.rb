class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778818387-g2c3c01"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778818387-g2c3c01/amp-darwin-arm64"
      sha256 "a296e8af570b1306062601b0ab63f7ceb14a2bb2d7d0dd41a574a493ff0a859d"
    else
      url "https://static.ampcode.com/cli/0.0.1778818387-g2c3c01/amp-darwin-x64"
      sha256 "245bd31c2789c025e0ce5bae363dab2bda0edc246fe80fd092dd0d41db4a388d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778818387-g2c3c01/amp-linux-arm64"
      sha256 "5329b785c29e1be51b8364dc678d06c66824d9dfcbf8bd58e9ef924637c8c4a6"
    else
      url "https://static.ampcode.com/cli/0.0.1778818387-g2c3c01/amp-linux-x64"
      sha256 "0d6088311853f941f7a779e6190a56f48777e984c527c6a89072e6fdd7163e1d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
