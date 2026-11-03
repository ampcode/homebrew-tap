class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793730614-g2bda05"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793730614-g2bda05/amp-darwin-arm64"
      sha256 "d0d894ed6e96a2c9be6db7ae29301d5b84dcebfb7620b779c08497112dcf22e3"
    else
      url "https://static.ampcode.com/cli/0.0.1793730614-g2bda05/amp-darwin-x64"
      sha256 "115988353261d000b9576a3f0a19099364bb9d525d5d1c27050b772427367289"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793730614-g2bda05/amp-linux-arm64"
      sha256 "54ee20bd10cabb840e7b13e2d1c2e3e310f27dc8e65b33778aabaea7e8eb1649"
    else
      url "https://static.ampcode.com/cli/0.0.1793730614-g2bda05/amp-linux-x64"
      sha256 "1845b3bb753dc041f1f0814003857c604c18a2aa08439d0048334fc568f3dbe3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
