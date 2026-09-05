class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788624043-gf294bf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788624043-gf294bf/amp-darwin-arm64"
      sha256 "d247e6715f332db611e1c2d6971ca5295bd429b7511e578d0281dbfbb34cd5d9"
    else
      url "https://static.ampcode.com/cli/0.0.1788624043-gf294bf/amp-darwin-x64"
      sha256 "480ff99d01f369375dfba9aabeea693297c78b11f41ced052ebbdd1fd7550bfc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788624043-gf294bf/amp-linux-arm64"
      sha256 "e68113c66b682faf1879c38d1a126886c35ad0bf25852da717069ac370539802"
    else
      url "https://static.ampcode.com/cli/0.0.1788624043-gf294bf/amp-linux-x64"
      sha256 "197d3c27e69ce1255491d7bcb42fd133ee2f453f5187ffee630132542c870765"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
