class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791403257-g05ffa9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791403257-g05ffa9/amp-darwin-arm64"
      sha256 "2dff4a5c6252dbc92e8d5f296a90d10e573f5a2bb6b6a58d15672f48bc11e442"
    else
      url "https://static.ampcode.com/cli/0.0.1791403257-g05ffa9/amp-darwin-x64"
      sha256 "ff6680c8bbde5ac9d58f2419adfd8771731c6369c1f7c04f2a53fb4514407b13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791403257-g05ffa9/amp-linux-arm64"
      sha256 "18847b055d817fd8228789a70b55991e287778b8f1aa3f7386b519ea7b9b2d31"
    else
      url "https://static.ampcode.com/cli/0.0.1791403257-g05ffa9/amp-linux-x64"
      sha256 "757232a463a3332a260f24cd5925e3083c94f25ab16621039e340ea7c02a0662"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
