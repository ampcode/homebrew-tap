class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775044317-g75146f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775044317-g75146f/amp-darwin-arm64"
      sha256 "0c1a851e3689c5a5a3d4e290a3b566b2959165867276a8c17b225f6e05bb4709"
    else
      url "https://static.ampcode.com/cli/0.0.1775044317-g75146f/amp-darwin-x64"
      sha256 "6058a5845e75b79647235f2ee164c8333db2da2b519b1afe9e72948f9129fa54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775044317-g75146f/amp-linux-arm64"
      sha256 "fdb78a5c73d146674b4214cf0eace6b50150021d579804f38d36d25934cf5b5c"
    else
      url "https://static.ampcode.com/cli/0.0.1775044317-g75146f/amp-linux-x64"
      sha256 "07b4a8abe04a38add5bdd3ba12fec650148daa8f0b23f0ea94c5e2e56b7e11af"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
