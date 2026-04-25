class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777104914-gcdb6ac"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777104914-gcdb6ac/amp-darwin-arm64"
      sha256 "bc2d51dcac2ca5a88cc8eb7fccf677df75fdff4b163eb7b2f60b1de187e5dbf1"
    else
      url "https://static.ampcode.com/cli/0.0.1777104914-gcdb6ac/amp-darwin-x64"
      sha256 "c2368e72286a6a43294e5e5ebebcc223512a2003d1e01ac758a83a8003c57f52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777104914-gcdb6ac/amp-linux-arm64"
      sha256 "73523b1f231178750e4151b386c4ab0d545399697c68b8fcb162a3654466e028"
    else
      url "https://static.ampcode.com/cli/0.0.1777104914-gcdb6ac/amp-linux-x64"
      sha256 "06fb13f30b65e6acc6df951cc12550a6a90739fc6637a7503b4676be4e8ed7b5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
