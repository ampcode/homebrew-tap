class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776125492-g5cb0c2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776125492-g5cb0c2/amp-darwin-arm64"
      sha256 "750be06d0b76d30c50eeab7ebfddb9bd1ee6fd9543fa376001708e0d821bc93e"
    else
      url "https://static.ampcode.com/cli/0.0.1776125492-g5cb0c2/amp-darwin-x64"
      sha256 "34f535fb1ef37dbe736217547abe53a273b86a95c4138e3940d86e023b3b1ea7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776125492-g5cb0c2/amp-linux-arm64"
      sha256 "d087ff8cc5f3fd2513214c7fccbebcc52966eac595f265041dafac0f7d0b11d3"
    else
      url "https://static.ampcode.com/cli/0.0.1776125492-g5cb0c2/amp-linux-x64"
      sha256 "f61107ef66ea7b1002e5dcd8db2be7cb93bfd820eb757f801f472fa5e01ec6a8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
