class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779836786-gb003ec"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779836786-gb003ec/amp-darwin-arm64"
      sha256 "5734c6bbf54ae663b70a5882125b651458ba56d3cd6d5f75a00902bf900250fe"
    else
      url "https://static.ampcode.com/cli/0.0.1779836786-gb003ec/amp-darwin-x64"
      sha256 "43fb6a02d5326433920ff0012fa9d72b39c737714e1f7678d776533fc6c74006"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779836786-gb003ec/amp-linux-arm64"
      sha256 "b6efbe3f6af313a0a2c53cd8255d3af1ecf2b6fc9addf5cc0c6179eae79fbe08"
    else
      url "https://static.ampcode.com/cli/0.0.1779836786-gb003ec/amp-linux-x64"
      sha256 "725b2e1f64f0abf64311d8ed7165a914e962b736f7c046a1b154bbf1afcb033c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
