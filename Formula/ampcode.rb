class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781252004-g12d6ec"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781252004-g12d6ec/amp-darwin-arm64"
      sha256 "167e6f60521100afc42fdac7336713fc328d6c96f39d44766cc10a5aae416061"
    else
      url "https://static.ampcode.com/cli/0.0.1781252004-g12d6ec/amp-darwin-x64"
      sha256 "7ea47a3cf129de0205fb5b4d926ade3a5279e15779c3d7e57a2942447100ac62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781252004-g12d6ec/amp-linux-arm64"
      sha256 "3aae1c98a44a21ffdb2f37c670b291b8a6b4924b7ef89ade8b02ad189a73f1bb"
    else
      url "https://static.ampcode.com/cli/0.0.1781252004-g12d6ec/amp-linux-x64"
      sha256 "b19a7b6db30ef52897574e4ec4155710b979267363888b1fc478f19ed00495b0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
