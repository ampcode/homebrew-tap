class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781291340-g764849"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781291340-g764849/amp-darwin-arm64"
      sha256 "fe67d0306ddefa62a19fc9ec3c840fe6ecbae86b6659d8ea1d32660c15b32670"
    else
      url "https://static.ampcode.com/cli/0.0.1781291340-g764849/amp-darwin-x64"
      sha256 "911f6b2e65f6b17be2638c44ac0483c5903f5d0c0134490e5204efb5ced92ab5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781291340-g764849/amp-linux-arm64"
      sha256 "d19f8414960bd150144c409c27eb1c862e8bf68f965b97a8cf3c086144ca5b15"
    else
      url "https://static.ampcode.com/cli/0.0.1781291340-g764849/amp-linux-x64"
      sha256 "cce96c519b713588d6ab92bb0149cf24be12b447fa1566f3ee0dfe2462738081"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
