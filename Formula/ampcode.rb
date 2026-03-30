class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774873738-gc73620"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774873738-gc73620/amp-darwin-arm64"
      sha256 "927ca43bbd6ecf7024543d02e67226af584f4f50c53b4069e6a79893a9fcaf14"
    else
      url "https://static.ampcode.com/cli/0.0.1774873738-gc73620/amp-darwin-x64"
      sha256 "e1f77362e097d8cf63565121ba1177e75038e8b90220a01baaaf1b36a4f5350b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774873738-gc73620/amp-linux-arm64"
      sha256 "6653e00d29c6f55413d3d17edd1d3009d15fc8967fd99a1c4b68ea9eeb1c1914"
    else
      url "https://static.ampcode.com/cli/0.0.1774873738-gc73620/amp-linux-x64"
      sha256 "fad9cc4eb072e67e95bfb0f0021c16dd8d25bdac714846fac1fbd3bc83ed146c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
