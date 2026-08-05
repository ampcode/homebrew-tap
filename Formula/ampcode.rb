class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785947431-g6251f3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785947431-g6251f3/amp-darwin-arm64"
      sha256 "4b54079beab1814d8b35d2f7d7838b67bcac37b6fe07cae0e725d4c1c00475bd"
    else
      url "https://static.ampcode.com/cli/0.0.1785947431-g6251f3/amp-darwin-x64"
      sha256 "9331889e201370cd716b97332da8bc41e1b833b3b6c1646de9cde1c927eb31f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785947431-g6251f3/amp-linux-arm64"
      sha256 "5d30413248d135b9f9012c15ad2b3db1e3de7d20be3be40742ff0cb218080ad0"
    else
      url "https://static.ampcode.com/cli/0.0.1785947431-g6251f3/amp-linux-x64"
      sha256 "f623ac64eeba32596c75f15bf65491de84e36e47ad221a833ff26bd9451fb589"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
