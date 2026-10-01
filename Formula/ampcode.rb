class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790871178-g5cbe9b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790871178-g5cbe9b/amp-darwin-arm64"
      sha256 "70bda7d13935cac656d1b67134cc6e57cdd71e492cbdf486a3a69bedd8c23bad"
    else
      url "https://static.ampcode.com/cli/0.0.1790871178-g5cbe9b/amp-darwin-x64"
      sha256 "a3c2b54214b4e7b4ff4278c71410e5a551b161b093b35bb21176afd311259eb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790871178-g5cbe9b/amp-linux-arm64"
      sha256 "3c64322405db2fa59ae583637224f8953f843e3c92d56fb1429a6691695e4c1e"
    else
      url "https://static.ampcode.com/cli/0.0.1790871178-g5cbe9b/amp-linux-x64"
      sha256 "74a63174e84b6789af938fc9f924e837737d05c2ccb076e071e42ac2e49ed966"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
