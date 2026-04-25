class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777139300-gdaa8b1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777139300-gdaa8b1/amp-darwin-arm64"
      sha256 "e66d6a73d117a90bd1e2f87629610c32a394394c54e5a6f10731b9674a16aef6"
    else
      url "https://static.ampcode.com/cli/0.0.1777139300-gdaa8b1/amp-darwin-x64"
      sha256 "6f014699f567290e39e102e3db0da926ee9240cfcca87e4f69552d2caa41a535"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777139300-gdaa8b1/amp-linux-arm64"
      sha256 "e764b1c0c82deeaa32ef4de123847c2262f30f3f2ce7e45d7504db30cc15cd0a"
    else
      url "https://static.ampcode.com/cli/0.0.1777139300-gdaa8b1/amp-linux-x64"
      sha256 "08d69cac56202babb7cd03a229c15f0c1308b7df4f8ad0d3d5a0f0804ddb84a8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
