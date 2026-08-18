class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787040398-gb7cc64"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787040398-gb7cc64/amp-darwin-arm64"
      sha256 "9908ee743512021caaf43329466f5f00bd26d378d3579b90a9fd8f17f5a73038"
    else
      url "https://static.ampcode.com/cli/0.0.1787040398-gb7cc64/amp-darwin-x64"
      sha256 "7bfe7c782214d4bca67d02aadca5af57b9d6256bddb2c8368115bd158cec1868"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787040398-gb7cc64/amp-linux-arm64"
      sha256 "d8b1a5de4e6f30027afb8d3b0bc3da9805eb57cad75c80dc4da67dde3dde9087"
    else
      url "https://static.ampcode.com/cli/0.0.1787040398-gb7cc64/amp-linux-x64"
      sha256 "86bf7ab1bb5d24f985aec8cedf869a7a6238fa15ccc39e05c39a51f5f3124bd8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
