class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788436865-g512c6e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788436865-g512c6e/amp-darwin-arm64"
      sha256 "64e410bde66fba5e1abdd3b3950ef29f8fadae4706c3c1c49b5f44f6dc0164d5"
    else
      url "https://static.ampcode.com/cli/0.0.1788436865-g512c6e/amp-darwin-x64"
      sha256 "9422d5259e763cb753b88fbd7aff9b7b0b26b77b0a86611b3e013d8219594cfc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788436865-g512c6e/amp-linux-arm64"
      sha256 "714f32c811b1831c13a6d1aceb43f67ebfe33ea933e5d78a012026797432638e"
    else
      url "https://static.ampcode.com/cli/0.0.1788436865-g512c6e/amp-linux-x64"
      sha256 "a9388dabae07dba802a34cf3418ab9563272ffd5dbb60e275f333de2746a3645"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
