class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793887133-gbf8b08"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793887133-gbf8b08/amp-darwin-arm64"
      sha256 "2db672054f3a060cb1a66bab02efcc60fd3ba485aef3cfd973087b01d037c30e"
    else
      url "https://static.ampcode.com/cli/0.0.1793887133-gbf8b08/amp-darwin-x64"
      sha256 "f1a28b2b2445f4b332b4410dba1a7300187b6e5d40a4ad529e16bcd84301a78f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793887133-gbf8b08/amp-linux-arm64"
      sha256 "dcb6ad3c82d757dce13c7caa0314d25f948709b6e49d1745d562fa8f90c5905a"
    else
      url "https://static.ampcode.com/cli/0.0.1793887133-gbf8b08/amp-linux-x64"
      sha256 "9e6398e1d2a46e1eb5499ef8289e3d1d132fcb1b2755475fd31bfe62986530cf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
