class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791518547-g6aa292"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791518547-g6aa292/amp-darwin-arm64"
      sha256 "e7c424af3e4eb2dd9b32d94a593bead22af298f629084afbb4d3513ccf5c2d62"
    else
      url "https://static.ampcode.com/cli/0.0.1791518547-g6aa292/amp-darwin-x64"
      sha256 "7d8db8e83524884f795703c1594dc41acd999cc5e7ad4f12d03a23ec5a5c77c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791518547-g6aa292/amp-linux-arm64"
      sha256 "438cc7c7d9f7d2962ca2b67a8dde6fc1d8c04bda846cf8f4125c38676ff85b72"
    else
      url "https://static.ampcode.com/cli/0.0.1791518547-g6aa292/amp-linux-x64"
      sha256 "11cfe608420c5c41098a8a56dee2b17baefe21213977f5e7b0c758945ef4de02"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
