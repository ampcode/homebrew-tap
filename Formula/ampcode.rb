class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777307350-g054ce6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777307350-g054ce6/amp-darwin-arm64"
      sha256 "3b0fc94993bfcc388a0f7fb1a8c395d75eede745ab56e47d8b2528efc59f7397"
    else
      url "https://static.ampcode.com/cli/0.0.1777307350-g054ce6/amp-darwin-x64"
      sha256 "cac7fad4f4e3e62414e4c0fea128eefbf706c5150589be3d450e7e18b4c96de9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777307350-g054ce6/amp-linux-arm64"
      sha256 "ca93ccc3b4a544a46e53c766caab3988748131245770b849fcdb9e5640c9d611"
    else
      url "https://static.ampcode.com/cli/0.0.1777307350-g054ce6/amp-linux-x64"
      sha256 "fb16d9396bbfc354507140a3a1d11ad6ab8193c697f7ae5215b6ecf356637b3a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
