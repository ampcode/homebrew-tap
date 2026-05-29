class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780087419-g22a983"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780087419-g22a983/amp-darwin-arm64"
      sha256 "f0973c954981b62830f12ea3e4139e178510851bf30bf4fc83862932185fc63f"
    else
      url "https://static.ampcode.com/cli/0.0.1780087419-g22a983/amp-darwin-x64"
      sha256 "8d33e4fc68e30c20ef037d6793d95b4566a2db1ef59267f845fd08778bead9fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780087419-g22a983/amp-linux-arm64"
      sha256 "a676c836396bbbbcc992b70c5b2ef560cc2ec30914de4f6299bfbdb832594906"
    else
      url "https://static.ampcode.com/cli/0.0.1780087419-g22a983/amp-linux-x64"
      sha256 "989de10b5738ac531ea3fa56e64e7b61176c750ef669ca145c9937d44a2ba13c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
