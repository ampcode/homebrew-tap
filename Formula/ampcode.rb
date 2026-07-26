class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785097128-g7f4e23"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785097128-g7f4e23/amp-darwin-arm64"
      sha256 "6e451e8ac4b6f1130957cb3247389beb6ea4ec492bd0c24a69da7f27885e13f6"
    else
      url "https://static.ampcode.com/cli/0.0.1785097128-g7f4e23/amp-darwin-x64"
      sha256 "6fe8761e32b718c904e9da0b699b78c5694c4ad04df1cc16c5fb8ab105bec3ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785097128-g7f4e23/amp-linux-arm64"
      sha256 "851aa61ece74a7eabe754cbf978a966dbad07c4661ecd8f06aaaef307b31c850"
    else
      url "https://static.ampcode.com/cli/0.0.1785097128-g7f4e23/amp-linux-x64"
      sha256 "1122a7a596b2173a08c82837b84a703e8030ada477dc6f55d8558d091843e77d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
