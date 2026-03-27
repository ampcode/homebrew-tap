class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774569934-g39e3ec"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774569934-g39e3ec/amp-darwin-arm64"
      sha256 "cbf67fedaa4584c3a88bf38c1eb558307513c5c87d4b5d2d0de704ef7182c751"
    else
      url "https://static.ampcode.com/cli/0.0.1774569934-g39e3ec/amp-darwin-x64"
      sha256 "0d9c8e79389f3852646eea09fc9f63928b423de5c18a3e1e4725e13e7e812eb9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774569934-g39e3ec/amp-linux-arm64"
      sha256 "0d9ac22bc270182eaf8c06c5f897b69bfd11f8a836fc4d9d7f6555f2911866ed"
    else
      url "https://static.ampcode.com/cli/0.0.1774569934-g39e3ec/amp-linux-x64"
      sha256 "0c5e71953b96a013c3e141bb3ad5eee713f773689bdf5e4b7e11368887ff5e45"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
