class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786788196-gfceb56"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786788196-gfceb56/amp-darwin-arm64"
      sha256 "d0baf1ee8ce030a1f456190c4c3dcc3c33856769266b155d08eb00b099661e28"
    else
      url "https://static.ampcode.com/cli/0.0.1786788196-gfceb56/amp-darwin-x64"
      sha256 "f2c6b9006ceab604676abf2837c4aac2d33331957bf424762d473a4f0e101dac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786788196-gfceb56/amp-linux-arm64"
      sha256 "3a2a4b466dbc4ab4c124b1e4b309822ed3ae95493161acaade05ecfc415daa72"
    else
      url "https://static.ampcode.com/cli/0.0.1786788196-gfceb56/amp-linux-x64"
      sha256 "149e28446b3118499b66ee344d6e51616d611467e470c3e296f52eedab11ae76"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
