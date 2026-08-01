class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785586633-g7cc0f2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785586633-g7cc0f2/amp-darwin-arm64"
      sha256 "c48e1359f6d1689f76841d6e36e6503f74d40efae2ab7536ef2cbec4df3a5878"
    else
      url "https://static.ampcode.com/cli/0.0.1785586633-g7cc0f2/amp-darwin-x64"
      sha256 "c13fa6aa44eb1a8892d56d602895b5f3a93ebee49023a6d477ea396bab4b2bbc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785586633-g7cc0f2/amp-linux-arm64"
      sha256 "045ac45b61963e324e186f3444e20570af7748819777ae4adbf495daa0834c80"
    else
      url "https://static.ampcode.com/cli/0.0.1785586633-g7cc0f2/amp-linux-x64"
      sha256 "2606e5270b2d5579d293398c498ae9508f307753e39bdec4575edfc1e1ea519b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
