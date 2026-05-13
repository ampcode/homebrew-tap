class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778662560-g317e7b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778662560-g317e7b/amp-darwin-arm64"
      sha256 "eed0589c0addbf56858364d14ef03a11987598e26a9aae141d905741e086d5cd"
    else
      url "https://static.ampcode.com/cli/0.0.1778662560-g317e7b/amp-darwin-x64"
      sha256 "3082bdb04414d009c750c88ceabeeed4e711b1d8bf055fd96613edcefbc765c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778662560-g317e7b/amp-linux-arm64"
      sha256 "709b05e682dbe904be72ce6231c7c562cd6a6dca772e8eec03329b9a04ec9687"
    else
      url "https://static.ampcode.com/cli/0.0.1778662560-g317e7b/amp-linux-x64"
      sha256 "ca94836bc445282287a810009553ee16ace5d22feb5c78ba0c4bec6a9d4431b2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
