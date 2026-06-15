class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781518387-g615fde"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781518387-g615fde/amp-darwin-arm64"
      sha256 "f91e43aa09f1314314edd260c0e71955b2877fd5d51810b3860ef7bcd03fa737"
    else
      url "https://static.ampcode.com/cli/0.0.1781518387-g615fde/amp-darwin-x64"
      sha256 "2968ef8f52c412af8940a55de0a6f618fd60294affd6557450d153972dc8c7cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781518387-g615fde/amp-linux-arm64"
      sha256 "a4dd112ddbb68458d44ac54ef769ec54a11c71e4fbfed5f78776cec3614a8b2c"
    else
      url "https://static.ampcode.com/cli/0.0.1781518387-g615fde/amp-linux-x64"
      sha256 "8aca8c12ccd18c90c7fc81e7ed17e9d57be86bc4dedf1fb2b9c6fc00e27cc2fa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
