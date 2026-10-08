class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791476260-g06c5ed"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791476260-g06c5ed/amp-darwin-arm64"
      sha256 "030e8016809841ae8085b3d664510b5b1d3b9b321c9a5121898cca9131e92b1c"
    else
      url "https://static.ampcode.com/cli/0.0.1791476260-g06c5ed/amp-darwin-x64"
      sha256 "56f0390554e0527c4fc4ec42b6dadfcb20dcf74d24765d71dd3f9740cd52dae1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791476260-g06c5ed/amp-linux-arm64"
      sha256 "c40fc79e582f2e21952d62eac66c8cff9357e94135698e59bbe62c8d20e32a93"
    else
      url "https://static.ampcode.com/cli/0.0.1791476260-g06c5ed/amp-linux-x64"
      sha256 "57497a88eeaa83c7a33ae94c0b02825f7ebcd0aa5fd27e632b0b6a5d83ed03d9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
