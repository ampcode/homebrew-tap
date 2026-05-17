class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779034655-g8f743a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779034655-g8f743a/amp-darwin-arm64"
      sha256 "17e93875a8c89cb36ccae0508fe4c0c11b4ad4c963bdb82d259c5766a921d5e6"
    else
      url "https://static.ampcode.com/cli/0.0.1779034655-g8f743a/amp-darwin-x64"
      sha256 "b7482e78f2bac7fbd84b7ec840c504dee44c096ceccebb8ffb1af798e66eb337"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779034655-g8f743a/amp-linux-arm64"
      sha256 "c1d9fb34ba77f59b59137c19da4ffd654937afb32613e39f97cf3a794fc6ff9f"
    else
      url "https://static.ampcode.com/cli/0.0.1779034655-g8f743a/amp-linux-x64"
      sha256 "d672f68b9e1eb1c21dae558b043ae33f14b2424eeeb075afee3e5d16943be277"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
