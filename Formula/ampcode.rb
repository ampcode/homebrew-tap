class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786724030-g71ab04"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786724030-g71ab04/amp-darwin-arm64"
      sha256 "11944fcd13b6af273c760153eea6ed02275e1ba3f8e51edc2b1dd67c30243746"
    else
      url "https://static.ampcode.com/cli/0.0.1786724030-g71ab04/amp-darwin-x64"
      sha256 "1b100b47d30a885534c701787a068e4560153ffb49a02fd62bebd0c68f426a45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786724030-g71ab04/amp-linux-arm64"
      sha256 "80569dfa114af4a0ff2349bdfb5a2c0a97cceb583562d3bbf882b1538a0bd893"
    else
      url "https://static.ampcode.com/cli/0.0.1786724030-g71ab04/amp-linux-x64"
      sha256 "9320087363a2a155009abe2036b8b63eb8fad58fc95f729554728aebbc5d7997"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
