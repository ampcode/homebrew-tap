class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789329654-g2cdf19"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789329654-g2cdf19/amp-darwin-arm64"
      sha256 "fa255efeb017706ef2421f1d49c2f86a25fcd46c745014a74044033015682593"
    else
      url "https://static.ampcode.com/cli/0.0.1789329654-g2cdf19/amp-darwin-x64"
      sha256 "0e6d6c2a6667d47120711b6479c70849503cd3bc702699031cb89e1e0efa30ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789329654-g2cdf19/amp-linux-arm64"
      sha256 "90709fa2022d1dfc4c040584084d436c30f24256bb35b70c0022e265e71ab0e8"
    else
      url "https://static.ampcode.com/cli/0.0.1789329654-g2cdf19/amp-linux-x64"
      sha256 "3c5d7f92078a6a3c76e57c00c31da64d7177197808e4e73667a06f9b9e467f80"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
