class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787686574-g5b2873"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787686574-g5b2873/amp-darwin-arm64"
      sha256 "1a548fbd0750eafdb7629aa1f5aca260f9d789430cd783716c905de9b4e4c15b"
    else
      url "https://static.ampcode.com/cli/0.0.1787686574-g5b2873/amp-darwin-x64"
      sha256 "93a95bcfa603a36a16b8255e702a3161d1ae4c3c9d3f39618036ac30d20953b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787686574-g5b2873/amp-linux-arm64"
      sha256 "888aa63ab4ddeceff4d2942b88ca4d3ac0c611c020cf1c5e9d661c0944f1a4f6"
    else
      url "https://static.ampcode.com/cli/0.0.1787686574-g5b2873/amp-linux-x64"
      sha256 "d06aedc923a0a8bfc13f7263e0707a801c9ce3a3b86ef6b15bffc2eaca8f5352"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
