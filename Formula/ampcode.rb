class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792958443-g695471"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792958443-g695471/amp-darwin-arm64"
      sha256 "d53938e98c83db093715948c64afc70d9afe49c1fa8c9885cfcf23a89ac79f20"
    else
      url "https://static.ampcode.com/cli/0.0.1792958443-g695471/amp-darwin-x64"
      sha256 "191379f9e1423d52083fc67743222281d71aa78266558d3e68b692f228c2c41a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792958443-g695471/amp-linux-arm64"
      sha256 "f7360edd5d6ed6097d5de581042e2072215355c4519ca2bf7625a524b74b06c5"
    else
      url "https://static.ampcode.com/cli/0.0.1792958443-g695471/amp-linux-x64"
      sha256 "a1b49326fa705242a5e54553d834ea505afa395688e10147fce9323ed5554838"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
