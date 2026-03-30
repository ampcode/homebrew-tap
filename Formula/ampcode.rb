class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774829165-g4f37d2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774829165-g4f37d2/amp-darwin-arm64"
      sha256 "0239f038ff08faa9e58a2126aaa965e44fed32077bdceea2b23ac0aa22c3c454"
    else
      url "https://static.ampcode.com/cli/0.0.1774829165-g4f37d2/amp-darwin-x64"
      sha256 "3d28bb3dabf621ae904e6e9bd5fad1e913b925c09fe4ed472729484d32a61c2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774829165-g4f37d2/amp-linux-arm64"
      sha256 "b29cbc5a8bf1eaa2e8677ab2f8f7539fe4b4bba8dd4bf3dd138a2684ba2d7c9d"
    else
      url "https://static.ampcode.com/cli/0.0.1774829165-g4f37d2/amp-linux-x64"
      sha256 "f4ef43aa9956f7673dfff15c30551a230e1f9b305b3cc633484692059f835657"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
