class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774880298-g3dd925"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774880298-g3dd925/amp-darwin-arm64"
      sha256 "f12297fa6cf474d88bdc5de96624617862a916f0c19ed377b5de1b09846a134c"
    else
      url "https://static.ampcode.com/cli/0.0.1774880298-g3dd925/amp-darwin-x64"
      sha256 "3cb94b751b3acf767c4df9b0ea53a7eb3d901d40d021147852fad5d618935f29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774880298-g3dd925/amp-linux-arm64"
      sha256 "d3df38aa6314dc1469482d03ffa067e0274774570948aebe771e54e66bc70c79"
    else
      url "https://static.ampcode.com/cli/0.0.1774880298-g3dd925/amp-linux-x64"
      sha256 "25fa31096418a7e81c91171d4197c577334b4764c5b65bbb85502723e8c174ad"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
