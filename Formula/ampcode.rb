class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778087986-g7acd91"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778087986-g7acd91/amp-darwin-arm64"
      sha256 "0086a7d877f7c8054ee7d343f1e4884e995952d7b2fc5fda347f621f3f87c6ba"
    else
      url "https://static.ampcode.com/cli/0.0.1778087986-g7acd91/amp-darwin-x64"
      sha256 "46d176c655b863aa6694bd286c3e178d1dfc32998027638a8a727ca12ce993bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778087986-g7acd91/amp-linux-arm64"
      sha256 "2191af73545e3437a8742bd98553d1508be952bdff64840bbbd9606bc22d9ead"
    else
      url "https://static.ampcode.com/cli/0.0.1778087986-g7acd91/amp-linux-x64"
      sha256 "c6633c1a49df7649d93fc5ee7f2ef95ab1d621f3479233a34bceeecdc01a8d03"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
