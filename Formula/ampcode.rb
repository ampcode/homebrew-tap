class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780533041-g554428"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780533041-g554428/amp-darwin-arm64"
      sha256 "2e27ba8a44d574a110e402a12ad47424ae438b6f48989a55099070d8d224a15b"
    else
      url "https://static.ampcode.com/cli/0.0.1780533041-g554428/amp-darwin-x64"
      sha256 "8ce3a2829788a874724ddea3ca1c9382706a60a5835b94f8d3a96196c64cb52c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780533041-g554428/amp-linux-arm64"
      sha256 "62bce0e36dea6f3a98b56acf943255942f1542a4b7e52ef006ec130246e97cc9"
    else
      url "https://static.ampcode.com/cli/0.0.1780533041-g554428/amp-linux-x64"
      sha256 "6643f13f4bc809963d79074090fe96786e8a4b0db687aa468314d3a930809750"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
