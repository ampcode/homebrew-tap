class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787587658-gd7b1f2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787587658-gd7b1f2/amp-darwin-arm64"
      sha256 "724d737b2473dac4c93aa420405bf3c1c42ba3cced6cecba9fcac91e54cb3e66"
    else
      url "https://static.ampcode.com/cli/0.0.1787587658-gd7b1f2/amp-darwin-x64"
      sha256 "2c56061730d36446272f5d2b43d5820a92f0a0b68e9ea3d722441834a2385a84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787587658-gd7b1f2/amp-linux-arm64"
      sha256 "276f9f2e061e200203bf66e3aec3b7e022401503df4b073ca23643462fcb1ee7"
    else
      url "https://static.ampcode.com/cli/0.0.1787587658-gd7b1f2/amp-linux-x64"
      sha256 "cbccab63f077671248d53c00635028ba22d868cbdf3a781e70ea11591a328a67"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
