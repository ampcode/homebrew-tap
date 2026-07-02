class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782995668-g845e5b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782995668-g845e5b/amp-darwin-arm64"
      sha256 "bb3fe52d82db468d5d9109f4f12db2e90cf25b66509e45fca66300cb4833ae1f"
    else
      url "https://static.ampcode.com/cli/0.0.1782995668-g845e5b/amp-darwin-x64"
      sha256 "2fecbc4010a510162024a2156ada1028b9316c4b31bea70f3eb93af221c4b0ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782995668-g845e5b/amp-linux-arm64"
      sha256 "003093876ee442d1b35eb75f2036fc85f02e44dbf1ebe8aa8e9c91f30a081445"
    else
      url "https://static.ampcode.com/cli/0.0.1782995668-g845e5b/amp-linux-x64"
      sha256 "b5f5a5b30b114f1a2e9451dd5b17b18b848320198902e6f67fc41882208ed448"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
