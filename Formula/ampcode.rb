class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777191791-gae6d40"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777191791-gae6d40/amp-darwin-arm64"
      sha256 "2b68d4268ae76e37624b4e3ff555f3454af4d0c4668e901cdc7f9f8c62689dfa"
    else
      url "https://static.ampcode.com/cli/0.0.1777191791-gae6d40/amp-darwin-x64"
      sha256 "4e277d0dcb52de63c8023875d0cf0e4796e7bc591a345c3eac6048e2641e05ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777191791-gae6d40/amp-linux-arm64"
      sha256 "d5b1401a974d31d2ff154200beec22da497f004818b455c1fab5b8d4b19cd0ef"
    else
      url "https://static.ampcode.com/cli/0.0.1777191791-gae6d40/amp-linux-x64"
      sha256 "36b87b66c0d9423db9d8c1c0520a334aff27d48764dc7a6e945c1949c732c64b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
