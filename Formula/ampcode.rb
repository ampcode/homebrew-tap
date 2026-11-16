class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794844850-g57e01b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794844850-g57e01b/amp-darwin-arm64"
      sha256 "f4e92dd85cf2ee0b528337e973ab0a1e7d8b0c1d06ad526530dda0aad9bbb683"
    else
      url "https://static.ampcode.com/cli/0.0.1794844850-g57e01b/amp-darwin-x64"
      sha256 "1e5eaadbf936462d4b5dbeadd4713f1fe99385df9c06a042a194e1434a06465b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794844850-g57e01b/amp-linux-arm64"
      sha256 "68cb5082a49f2be5a02094b3efa4ded7fe4eea1755d4d247eac637b839c1c4b7"
    else
      url "https://static.ampcode.com/cli/0.0.1794844850-g57e01b/amp-linux-x64"
      sha256 "d51107b2b1432b8dff0aa5a66a4d2383b56bde9eb95f804524ec9bb67665c01f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
