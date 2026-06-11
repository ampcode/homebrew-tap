class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781191557-g0be3ef"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781191557-g0be3ef/amp-darwin-arm64"
      sha256 "c55e0450e69ba0e1b2d4122f48748ed8b461844fe8f699eb235e936e6f3e47f1"
    else
      url "https://static.ampcode.com/cli/0.0.1781191557-g0be3ef/amp-darwin-x64"
      sha256 "e987235d522b30b960fa86baf780af06e5e2b89b45e1a2707829f9eac9eb94dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781191557-g0be3ef/amp-linux-arm64"
      sha256 "a286d6461dedf9edc574257f8f22a35b5717f9947dc183a3669931b1d58bbe7e"
    else
      url "https://static.ampcode.com/cli/0.0.1781191557-g0be3ef/amp-linux-x64"
      sha256 "fcf080f47292eebb2a728f7836188d625408b7601821f332c1759fc4812de785"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
