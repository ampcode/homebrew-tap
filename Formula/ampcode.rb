class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788048110-g570348"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788048110-g570348/amp-darwin-arm64"
      sha256 "e3e96ad96c7d13da84d2fbb1d22416508fc2dbb4c3fc84ee5e68abe81c3e9bec"
    else
      url "https://static.ampcode.com/cli/0.0.1788048110-g570348/amp-darwin-x64"
      sha256 "449f67df3cde6c8a461d8206d1982c6f9fb9490346a3c7f0b272c73da2b91e87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788048110-g570348/amp-linux-arm64"
      sha256 "33cd127b2386796055ad187a7a9e204d7890dc86a84e9899fa460e35e9403ae5"
    else
      url "https://static.ampcode.com/cli/0.0.1788048110-g570348/amp-linux-x64"
      sha256 "37fb0897031e40e25d8e55dd88e9312870b6590de09188094510fb175ce76811"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
