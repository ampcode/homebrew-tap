class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779083535-g196e66"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779083535-g196e66/amp-darwin-arm64"
      sha256 "a3ab78caa80b448f9c621c294bb65b0f5ab7b1ca2357ba951ca88913fbf55ed6"
    else
      url "https://static.ampcode.com/cli/0.0.1779083535-g196e66/amp-darwin-x64"
      sha256 "7461db20ced37253b17df1253d922012434f13c680d52b6772bfc00007910f2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779083535-g196e66/amp-linux-arm64"
      sha256 "1bc06ba31034eef825feb7d98d860b62c86e5eb3f67ed3938d7a60d47efaa40b"
    else
      url "https://static.ampcode.com/cli/0.0.1779083535-g196e66/amp-linux-x64"
      sha256 "7ed1fa39e32498ba45d4e57ba7fd3c28e4437516576212dbf4f62e6f02292639"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
