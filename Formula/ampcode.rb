class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774945762-g24095c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774945762-g24095c/amp-darwin-arm64"
      sha256 "a20532c1f6dc95c6989734c9462542c958263d51c77b4b6db5be1f066995a576"
    else
      url "https://static.ampcode.com/cli/0.0.1774945762-g24095c/amp-darwin-x64"
      sha256 "f400689768143d046c23da5bc95e05f6944ad31ddc895f68a397952810a5705e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774945762-g24095c/amp-linux-arm64"
      sha256 "bcab48c427960c9774c9c35a92d87eb622b805587f0936d9a205f1a62365f72f"
    else
      url "https://static.ampcode.com/cli/0.0.1774945762-g24095c/amp-linux-x64"
      sha256 "46b5127f7439c5c8d29f1ead310d95f30d05c5dd1a1329262ad1e127f99ac97d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
