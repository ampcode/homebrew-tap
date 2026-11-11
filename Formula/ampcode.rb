class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794427236-ga7dfca"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794427236-ga7dfca/amp-darwin-arm64"
      sha256 "46645443539638b7cdabea433cf27ac2332941db32cade2f3974e90d788b0d22"
    else
      url "https://static.ampcode.com/cli/0.0.1794427236-ga7dfca/amp-darwin-x64"
      sha256 "38b2f66be40dbd464769604c4035b36ca2c6fdec53c23519efc19a7de69ed4d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794427236-ga7dfca/amp-linux-arm64"
      sha256 "3abeb84d8f072c8be8d2a496020decedc76bc41327e2cf94fb2b58c0fd637250"
    else
      url "https://static.ampcode.com/cli/0.0.1794427236-ga7dfca/amp-linux-x64"
      sha256 "05cb1003740c64f9d18a1815e4c390a70884724ba46f6c46a09e552ed7111028"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
