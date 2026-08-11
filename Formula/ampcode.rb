class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786436318-g8453bf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786436318-g8453bf/amp-darwin-arm64"
      sha256 "a3564f7714890422ccaac86cee18bc5b13e067deafb403ca83ffd28f7e42ffdb"
    else
      url "https://static.ampcode.com/cli/0.0.1786436318-g8453bf/amp-darwin-x64"
      sha256 "ced86f8f5756b9de33ff0a89d2776d7b1723695d6b1e1253a474912782c077af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786436318-g8453bf/amp-linux-arm64"
      sha256 "a7f4500974b98421374eb8d520fb30b51f945d30e38be718c7ce0034b455568c"
    else
      url "https://static.ampcode.com/cli/0.0.1786436318-g8453bf/amp-linux-x64"
      sha256 "2c0bb468ddaf2c16f59e28dbeb9c5e688a11f438633d6d6d3143b53301d97432"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
