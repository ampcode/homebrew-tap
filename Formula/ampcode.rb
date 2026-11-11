class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794398443-g0895e3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794398443-g0895e3/amp-darwin-arm64"
      sha256 "6794d663ff24be6d8a0dcaa89c0f2f3ada631ef6d23eb3b9cc0fd92d5b8771d1"
    else
      url "https://static.ampcode.com/cli/0.0.1794398443-g0895e3/amp-darwin-x64"
      sha256 "bc3b0e045fdfe3fe41e81dd3b85c057c2d7abcd9a7cebba05abb041dcb224616"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794398443-g0895e3/amp-linux-arm64"
      sha256 "2cc6e399e870cfc7986a4a15c87ae30c0c00bb0e3925aafa5172d1f7ab36615f"
    else
      url "https://static.ampcode.com/cli/0.0.1794398443-g0895e3/amp-linux-x64"
      sha256 "b28200351657557c3d940582020a8abd591782ac6489fc174ff43313b1fe9734"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
