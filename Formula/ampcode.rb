class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774681450-g815005"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774681450-g815005/amp-darwin-arm64"
      sha256 "fa02b59931ca6a1d39ed28726c010a569195ca424b2144c972f64aeffa1f3113"
    else
      url "https://static.ampcode.com/cli/0.0.1774681450-g815005/amp-darwin-x64"
      sha256 "98e71b87be287d93c028294e9c2c5a3a9e1827d414151fb61df274c31905391f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774681450-g815005/amp-linux-arm64"
      sha256 "36529f1f301a683d57f5e0c6a5f05db23d5f25423508165828a3865c2568d2f3"
    else
      url "https://static.ampcode.com/cli/0.0.1774681450-g815005/amp-linux-x64"
      sha256 "125d083d98853d6e4916eec695d6858e67206c301f2e7f5d319cfe3b31389c45"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
