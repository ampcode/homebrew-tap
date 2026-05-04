class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777887506-g99e4c0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777887506-g99e4c0/amp-darwin-arm64"
      sha256 "1a4bc408f230095f9388fcf4c20031180a49f49450dae5082f7933fe7ae76f05"
    else
      url "https://static.ampcode.com/cli/0.0.1777887506-g99e4c0/amp-darwin-x64"
      sha256 "0e37d7d3cba65e7d333dd302a8f4ca83641769662d552afbd4e5306539db968e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777887506-g99e4c0/amp-linux-arm64"
      sha256 "95ca4f1b9da005f91979c5a274c8bb1190d882f06242100e6d621bfa6a86c772"
    else
      url "https://static.ampcode.com/cli/0.0.1777887506-g99e4c0/amp-linux-x64"
      sha256 "8e0335953538fcfc1babda948fe757481c6f7e16ecb3871a32a2477f69aee1fd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
