class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785616099-g24ff49"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785616099-g24ff49/amp-darwin-arm64"
      sha256 "12526b4b3bf7b0b2f9b4a1a2c6c8424cc76b501838d3326681f73d24906540b1"
    else
      url "https://static.ampcode.com/cli/0.0.1785616099-g24ff49/amp-darwin-x64"
      sha256 "fcd193c38dcc629b900b0670fb9fc10850e5bfa4ca8cfc6c40cbcb415a83bf18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785616099-g24ff49/amp-linux-arm64"
      sha256 "8d24509cecc580fb74dedbe7eca94249df4a53af72d4278e3da6d96a18d74943"
    else
      url "https://static.ampcode.com/cli/0.0.1785616099-g24ff49/amp-linux-x64"
      sha256 "48d78530da0d975fd06a265d76ec3614e1af2b73778d6aa85696aab32dbe696f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
