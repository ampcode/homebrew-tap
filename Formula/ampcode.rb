class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792772906-g2aa9bd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792772906-g2aa9bd/amp-darwin-arm64"
      sha256 "38f23c43ceed2132dd1252d075264eef07c6c148d5c0d90338c2be60542857a8"
    else
      url "https://static.ampcode.com/cli/0.0.1792772906-g2aa9bd/amp-darwin-x64"
      sha256 "db6472645a494fd796368ab2de89392f6105872025f37f2652aaddafaa3d1d20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792772906-g2aa9bd/amp-linux-arm64"
      sha256 "d4f54f58d161641951ae33dd83a5b21d2d2d50a97f2edc1806324ddbbaec90f0"
    else
      url "https://static.ampcode.com/cli/0.0.1792772906-g2aa9bd/amp-linux-x64"
      sha256 "1a051a37a3dc1a10f7840037ef2e041d8f28bb3e39643cbeb9f36c719b682c51"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
