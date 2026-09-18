class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789724374-g0d2ed0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789724374-g0d2ed0/amp-darwin-arm64"
      sha256 "82c6af249e3f378c0193612a15085a526cd278b6506cf911d3cbc66bdaf139ac"
    else
      url "https://static.ampcode.com/cli/0.0.1789724374-g0d2ed0/amp-darwin-x64"
      sha256 "a52b7ebc66ef6b20010cc875d3d7855f7bdd9901d69de0a2da65c6da6d915281"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789724374-g0d2ed0/amp-linux-arm64"
      sha256 "7e04d482910942c08c1c1b4c826e83b997b69377a8c10b2354f15b55548c4930"
    else
      url "https://static.ampcode.com/cli/0.0.1789724374-g0d2ed0/amp-linux-x64"
      sha256 "7c45e90d54d8a46adf8069077341e85471c6bff3e2a881afc00f0ab35b188f91"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
