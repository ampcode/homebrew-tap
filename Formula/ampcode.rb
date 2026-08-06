class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786006377-g6eaed7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786006377-g6eaed7/amp-darwin-arm64"
      sha256 "f40d7be9cb7bc4cac48bf26a502132bd24904d579a0838c67a8dcad3c70d12dc"
    else
      url "https://static.ampcode.com/cli/0.0.1786006377-g6eaed7/amp-darwin-x64"
      sha256 "0e5774a40c72e45e7702933c8e1321e1ea7328d7bd0aaab5c3a2c2eaa88f3771"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786006377-g6eaed7/amp-linux-arm64"
      sha256 "2a2c7440fd310d4e396ad5d84f7235975f2459bfcd82b7e93b938b22cb1e000c"
    else
      url "https://static.ampcode.com/cli/0.0.1786006377-g6eaed7/amp-linux-x64"
      sha256 "cc08afbbafe3441bb8fe9e6802dc3fba487d392bd9b97b711a9fb4443e651f6d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
