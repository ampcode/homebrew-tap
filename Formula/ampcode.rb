class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787325403-gbf47b4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787325403-gbf47b4/amp-darwin-arm64"
      sha256 "79d11ea669715bb9c6f23766fc206577972b7374254dcba84a15eec1eb276ac3"
    else
      url "https://static.ampcode.com/cli/0.0.1787325403-gbf47b4/amp-darwin-x64"
      sha256 "1a6018bc371d9f4146e8c7bbbba008fabcd08e4f0e721cf75a51640200f72b06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787325403-gbf47b4/amp-linux-arm64"
      sha256 "7cdd8dc684402fbf750f6341048ae98dd70a289a64b03dffe1c4128849c38f81"
    else
      url "https://static.ampcode.com/cli/0.0.1787325403-gbf47b4/amp-linux-x64"
      sha256 "4aba9526df25b5373829317586e10b9135976574c3e288a1b06e11d1dc6ea745"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
