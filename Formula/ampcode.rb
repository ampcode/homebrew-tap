class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788355680-g4fc185"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788355680-g4fc185/amp-darwin-arm64"
      sha256 "ae6c2d1562101dc6f1197fb55aeef54f3197b67ab9305e9b41c3617109c0d6e7"
    else
      url "https://static.ampcode.com/cli/0.0.1788355680-g4fc185/amp-darwin-x64"
      sha256 "1ff3c044dae60c6f5c0d72329d9ffa6915f240aebf27978d27ee557d5c37e48c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788355680-g4fc185/amp-linux-arm64"
      sha256 "2e614ba46c475b6a771702c770a64f84d2742296232106ffe0ac308e84b153a3"
    else
      url "https://static.ampcode.com/cli/0.0.1788355680-g4fc185/amp-linux-x64"
      sha256 "7ce925bc8bddc72285b2ee74f6c868bdd087f95f02c0dbc005bfd56aea2cdc2b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
