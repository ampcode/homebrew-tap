class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775894934-g5bb49b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775894934-g5bb49b/amp-darwin-arm64"
      sha256 "133698d305218fc54e4a334ac22fd04b6271aa67ce422a04a9d3e548b3aebb07"
    else
      url "https://static.ampcode.com/cli/0.0.1775894934-g5bb49b/amp-darwin-x64"
      sha256 "d4f0a601a3c39ffcc116a3a9b24ada737d2c0ce2c2066a7281852c25983048e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775894934-g5bb49b/amp-linux-arm64"
      sha256 "29afc571fdda6978f9af7ded2f4703d848f44b6d79fdf9e7d5e1abeb2a4bf0c3"
    else
      url "https://static.ampcode.com/cli/0.0.1775894934-g5bb49b/amp-linux-x64"
      sha256 "3aa2db6d5ec3a9a551fead6a4c2d64c5841bb9de9a972def94851587bcbcf692"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
