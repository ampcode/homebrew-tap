class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783881703-g96121a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783881703-g96121a/amp-darwin-arm64"
      sha256 "c409b219c8cbc6e7af2654b37939ef33c97edca55f27906f4fde1d76a71fc0b0"
    else
      url "https://static.ampcode.com/cli/0.0.1783881703-g96121a/amp-darwin-x64"
      sha256 "1981a259c5b506738df14de981bc77b68ac4bb16d0d8e271c8b8e79e917c1c01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783881703-g96121a/amp-linux-arm64"
      sha256 "2a2615dd65d8a11379cf1932786171224d29117b9a756f1a987993203f02a84b"
    else
      url "https://static.ampcode.com/cli/0.0.1783881703-g96121a/amp-linux-x64"
      sha256 "61829004e3c2200efd8cabc51cc99da6216ec527aaf11e224711e209022e16a3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
