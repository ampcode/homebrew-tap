class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782282830-g780637"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782282830-g780637/amp-darwin-arm64"
      sha256 "fcd5c4b1211a822b671adcdcb42253d737397d1d8020eddbbe0e4956490a06bd"
    else
      url "https://static.ampcode.com/cli/0.0.1782282830-g780637/amp-darwin-x64"
      sha256 "e6a5420b24f5a145a1e4c789270bbee1613ae8125d0fabe4fee346a7594a46c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782282830-g780637/amp-linux-arm64"
      sha256 "81cb53d1732cb045b85b26c8cad28dd0e2f509a56e10b43237b0314689194e74"
    else
      url "https://static.ampcode.com/cli/0.0.1782282830-g780637/amp-linux-x64"
      sha256 "55172d2813b13ac846c5ac441b7921a9df3f19a0e398c68b50b397c1ef36dc52"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
