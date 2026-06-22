class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782168797-g56c0bd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782168797-g56c0bd/amp-darwin-arm64"
      sha256 "f2c38df518953dc89fb66f6b4682bb0ba9ad2bf50fbc5e545e1aed11444204e0"
    else
      url "https://static.ampcode.com/cli/0.0.1782168797-g56c0bd/amp-darwin-x64"
      sha256 "e5c10962bc1e82d6a408d4880d75f8ef57605e44b1ace0cbb9782a64d01136f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782168797-g56c0bd/amp-linux-arm64"
      sha256 "c9616b15f2c2cdda074c1975312876aaece21571cfd4494cb59e9df41f99bfe3"
    else
      url "https://static.ampcode.com/cli/0.0.1782168797-g56c0bd/amp-linux-x64"
      sha256 "6ca56066d25e716f7d2200e8064da6686629d448539aba57111cf269e1f81cfb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
