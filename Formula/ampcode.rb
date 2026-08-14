class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786738049-g32e30e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786738049-g32e30e/amp-darwin-arm64"
      sha256 "e41d78d6c1974c1e0b6d15b3ff30585c87fba8d687ee8cedd4bdbb8a69808b7d"
    else
      url "https://static.ampcode.com/cli/0.0.1786738049-g32e30e/amp-darwin-x64"
      sha256 "fe9aa297cfcd7b1791ffa5d1f17edd06bc3a2be45f7196ea3e5b4269513f4300"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786738049-g32e30e/amp-linux-arm64"
      sha256 "a37cacc9f5d644524c1330c27c2804fa86fc106ef4cd6bac2fbec73bc9e8bd02"
    else
      url "https://static.ampcode.com/cli/0.0.1786738049-g32e30e/amp-linux-x64"
      sha256 "76badd4cfc6c2005e2df14a404933e83dad9dd30cb29311449a3837a96efde97"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
