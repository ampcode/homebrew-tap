class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776674366-ga5a688"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776674366-ga5a688/amp-darwin-arm64"
      sha256 "cf17ad37fff6956887171619d50669ed97698775dfb18a0985de207803c9b8dc"
    else
      url "https://static.ampcode.com/cli/0.0.1776674366-ga5a688/amp-darwin-x64"
      sha256 "be44b32851a2c9e423e925c9f54122b21d1c34b14c87b31e3ded2aef22761b82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776674366-ga5a688/amp-linux-arm64"
      sha256 "f57568c620825a108a039fe1f865d374c8fda6f6a00ecd0b77ab7e605f6f926e"
    else
      url "https://static.ampcode.com/cli/0.0.1776674366-ga5a688/amp-linux-x64"
      sha256 "fb64c9a6604aeea9619ec9f15a51855a251859f96aa189e3a3a4f92e7c497f57"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
