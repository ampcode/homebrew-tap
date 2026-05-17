class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779040962-g094dfb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779040962-g094dfb/amp-darwin-arm64"
      sha256 "064d1d220dd5b14dafb76edbb4b1e197eda706ff9e29f96aaa8c227ee1a8c53d"
    else
      url "https://static.ampcode.com/cli/0.0.1779040962-g094dfb/amp-darwin-x64"
      sha256 "f1cd00e0f2c3eec80f8caa695d027b19a87053d53d0f91621c584b2b405f18dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779040962-g094dfb/amp-linux-arm64"
      sha256 "518491efe131e63783b02e31ce9f2091f9ee26d8fda046e32c21b9660a4bbbd9"
    else
      url "https://static.ampcode.com/cli/0.0.1779040962-g094dfb/amp-linux-x64"
      sha256 "16393ba278a5801f4dbf2b41fcede83a927231f4650234626485a60d3e8646c1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
