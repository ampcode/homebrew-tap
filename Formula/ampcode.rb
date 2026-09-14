class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789358550-gfbbd2a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789358550-gfbbd2a/amp-darwin-arm64"
      sha256 "a7d6b2fa2b380c26499f3cf5b4ae1008e61ec899a64345ae9fddc5820dffbbc1"
    else
      url "https://static.ampcode.com/cli/0.0.1789358550-gfbbd2a/amp-darwin-x64"
      sha256 "f8fd686f5999c488ec7d813a97e97dd872f3367493058e6135126f2e0b22be87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789358550-gfbbd2a/amp-linux-arm64"
      sha256 "30c140cdd5aa19498b980312399326c4c4b4d6fc3002e1d83cf6e6819d872785"
    else
      url "https://static.ampcode.com/cli/0.0.1789358550-gfbbd2a/amp-linux-x64"
      sha256 "963216b890f08f8c797f5f625c569697596f1829e3bae75c68433260a3040e1c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
