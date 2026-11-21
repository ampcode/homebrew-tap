class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795276835-g0feb0c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795276835-g0feb0c/amp-darwin-arm64"
      sha256 "1fe767d0db40a5f637b8a89d1f5777c7a98343f7b424fd43b3786ccdaae3dcb7"
    else
      url "https://static.ampcode.com/cli/0.0.1795276835-g0feb0c/amp-darwin-x64"
      sha256 "98be27903234e9048f60236a565aed4134d3f3049b1f359c3d0ff561c3da6adb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795276835-g0feb0c/amp-linux-arm64"
      sha256 "1a0b67aebd0d0620a0cb76feb7de36e23a514ef938359821d4bb8d527350b38b"
    else
      url "https://static.ampcode.com/cli/0.0.1795276835-g0feb0c/amp-linux-x64"
      sha256 "7ba5abd00376945e726fafb13dca45e9e00b2db66d43951954109cc1b2f44824"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
