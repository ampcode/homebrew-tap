class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778343260-gb9a37d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778343260-gb9a37d/amp-darwin-arm64"
      sha256 "7a7b29a9f20b07c92760f59d874da3f6b4456bce00a6f54fd8dab031d41963cc"
    else
      url "https://static.ampcode.com/cli/0.0.1778343260-gb9a37d/amp-darwin-x64"
      sha256 "e83fb9b7eae967bf1375e3178e1dc8fb357610a28df55f9140c8d39af0a9bf73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778343260-gb9a37d/amp-linux-arm64"
      sha256 "9edd7fd483818d56afc2c3e5d3a91364ff3ef395b7dfa1b2e4d3ddfed27383fb"
    else
      url "https://static.ampcode.com/cli/0.0.1778343260-gb9a37d/amp-linux-x64"
      sha256 "7db548170003103eb7a2b6ecf69679939a9dee25d3e1794c543d002a62b2bc32"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
