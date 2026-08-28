class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787884076-g54d4f3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787884076-g54d4f3/amp-darwin-arm64"
      sha256 "2ff248744b5feb0c7643db993c8a3e699d53ef39c9cd8b851fd6b4eb6f0cc75e"
    else
      url "https://static.ampcode.com/cli/0.0.1787884076-g54d4f3/amp-darwin-x64"
      sha256 "268a5d70ecf55ad7562f60a2ae72fa5d38a02a68afcc4057295fc92f8a7fd293"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787884076-g54d4f3/amp-linux-arm64"
      sha256 "3410f883faeeea98e66e669b8e977c4769f30cd9f52ed51eec1de9487d3c4838"
    else
      url "https://static.ampcode.com/cli/0.0.1787884076-g54d4f3/amp-linux-x64"
      sha256 "575e0a994a04634db7edfd1fb1b65a507fbe409983221812cb65a338d1558402"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
