class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790380893-geeadb1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790380893-geeadb1/amp-darwin-arm64"
      sha256 "a14a52e9a0aef21e8b2005f71c15f711398dadd296d9b4efc85957601fc76736"
    else
      url "https://static.ampcode.com/cli/0.0.1790380893-geeadb1/amp-darwin-x64"
      sha256 "61632f7ac184737d73c67c967a2affe310766e46b58759e49a01336a87f199c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790380893-geeadb1/amp-linux-arm64"
      sha256 "f9dad4e59dc6faf0d653d1a50b600ed4e4b0f7428f02c4ef557de94fa395132c"
    else
      url "https://static.ampcode.com/cli/0.0.1790380893-geeadb1/amp-linux-x64"
      sha256 "1afda829f50e618efa9291c41551d59250c0a554c4e4d2e5ee245359593c6efa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
