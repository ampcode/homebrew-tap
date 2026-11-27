class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795780844-g2b802b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795780844-g2b802b/amp-darwin-arm64"
      sha256 "1329992043a58e6687c41159c979c8f6b832f66a48004298d67e222a1828f1d1"
    else
      url "https://static.ampcode.com/cli/0.0.1795780844-g2b802b/amp-darwin-x64"
      sha256 "14798f697d3c3508f93376671c555434ae8534e0030ea7a19763217c337c7f1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795780844-g2b802b/amp-linux-arm64"
      sha256 "95fec3c4fbe5a4aaed4b19239d48b7b64b591ad0c031d0645ed3f028c8ccfa8d"
    else
      url "https://static.ampcode.com/cli/0.0.1795780844-g2b802b/amp-linux-x64"
      sha256 "9089b1a1dfdd21b0b94cb26041d8da3bae43fbfe491dcaa88f7c89244485b9c4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
