class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794556834-g6debc9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794556834-g6debc9/amp-darwin-arm64"
      sha256 "13b2f40ca635e34a4da83353a8f73b68279c78a6cfa736e87dadb0017caf6ac3"
    else
      url "https://static.ampcode.com/cli/0.0.1794556834-g6debc9/amp-darwin-x64"
      sha256 "f6ea24ce3e900ae4bde28ad8dcf84ec4ba21eb55cdbfb54267a28e226382ec90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794556834-g6debc9/amp-linux-arm64"
      sha256 "3d5077636cefc624130e1e0d68430902abde6dbd8c691f965c297c93beeb5ae5"
    else
      url "https://static.ampcode.com/cli/0.0.1794556834-g6debc9/amp-linux-x64"
      sha256 "e3eb1547f5ef0cbc2a387f956f4706a06a71defdc21d272bc674bafeca4f4033"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
