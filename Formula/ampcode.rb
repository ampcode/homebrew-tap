class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786190746-gd7496c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786190746-gd7496c/amp-darwin-arm64"
      sha256 "b5ce61c74f3e7975968be830657857e6d951ef205dcf75cb118373e63de85aa8"
    else
      url "https://static.ampcode.com/cli/0.0.1786190746-gd7496c/amp-darwin-x64"
      sha256 "7728c7115286bb4c31ff5ea3d57bf67596c6b0ede957bc08b4fefa079527fb6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786190746-gd7496c/amp-linux-arm64"
      sha256 "d3b4d502bd87a2bca6d3e102ec0428d1e066cb181cd3ed197c4a748a8250a1d1"
    else
      url "https://static.ampcode.com/cli/0.0.1786190746-gd7496c/amp-linux-x64"
      sha256 "fac3399986966a6987419b0ad732452519e34a36a8cc98f016d264211dbe9ae5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
