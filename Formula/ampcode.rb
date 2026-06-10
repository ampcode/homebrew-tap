class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781087614-gd32301"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781087614-gd32301/amp-darwin-arm64"
      sha256 "d91b4f9e3508fa2b1ea488b14ba6530ce9196470c5e8d6e5926196d207926d20"
    else
      url "https://static.ampcode.com/cli/0.0.1781087614-gd32301/amp-darwin-x64"
      sha256 "db7f0e411349926c5ee9be106ac2727cbb5b9760df57597ece9acb4c81de55e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781087614-gd32301/amp-linux-arm64"
      sha256 "993174c495bfb93449e1e0b22f3fda91f54cb4b79cf34629986fcac11c8684c9"
    else
      url "https://static.ampcode.com/cli/0.0.1781087614-gd32301/amp-linux-x64"
      sha256 "e71ca949df1c03ab0abc274efcf0fa47fd3ad071832451656e7528fd283f88e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
