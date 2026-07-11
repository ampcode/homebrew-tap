class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783786557-g15aef4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783786557-g15aef4/amp-darwin-arm64"
      sha256 "a403dfef7c2ff7b95c5625529f9e99f741f013fb1128c295b351c80077fed914"
    else
      url "https://static.ampcode.com/cli/0.0.1783786557-g15aef4/amp-darwin-x64"
      sha256 "752a864f3633cc77de2f52d169f98d19cdb2fd7a12a4a989152aa8b8524d3462"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783786557-g15aef4/amp-linux-arm64"
      sha256 "255e4d2d2dd6c4d26459530247ca5f2f02072bfb8daac47f5ce3b10f92c94593"
    else
      url "https://static.ampcode.com/cli/0.0.1783786557-g15aef4/amp-linux-x64"
      sha256 "63bcbb61d33117b433132f5e4ab4a086eafee89395966aa0afb96875086e6769"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
