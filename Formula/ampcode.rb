class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785252908-gec296b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785252908-gec296b/amp-darwin-arm64"
      sha256 "c918b94dc551b826ec52e00159df54c745bc527a7a677898887a493b47d04ce1"
    else
      url "https://static.ampcode.com/cli/0.0.1785252908-gec296b/amp-darwin-x64"
      sha256 "7ee418e1743d1964f5e41038a0c9ab8dad872f7796eb9338ac8eeabe56f72387"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785252908-gec296b/amp-linux-arm64"
      sha256 "3e19627a529b07da1127bd107435c06f5f55e38cf4bdcd4fdd059c9d58336bfb"
    else
      url "https://static.ampcode.com/cli/0.0.1785252908-gec296b/amp-linux-x64"
      sha256 "5d3022c18998ed891a779b31d42804b08c1c8c85b477b4575d6cfc5a08c5eb72"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
