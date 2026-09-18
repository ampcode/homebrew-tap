class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789763104-g84ef29"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789763104-g84ef29/amp-darwin-arm64"
      sha256 "ad231f122b1150f1a42d2f8ddd062a2423babd3c03a96fc2c6e9b84608a9f537"
    else
      url "https://static.ampcode.com/cli/0.0.1789763104-g84ef29/amp-darwin-x64"
      sha256 "d973827f68443685445ae3f3e5b1622c3c724885636158ed51afabf11c089d90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789763104-g84ef29/amp-linux-arm64"
      sha256 "626b2482e51de350cf1cbb250764b924260523512b805a7cb49ae5c3e3c36e14"
    else
      url "https://static.ampcode.com/cli/0.0.1789763104-g84ef29/amp-linux-x64"
      sha256 "883749e97dfd4728d0485b98d97a62e00e29ae141b9da21e1bc4bd3650a5ea02"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
