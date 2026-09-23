class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790179256-g22a153"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790179256-g22a153/amp-darwin-arm64"
      sha256 "8a11945c6a28966a38e43b13a96aced94b5d0277ddbd1873d011ef52b9b009d2"
    else
      url "https://static.ampcode.com/cli/0.0.1790179256-g22a153/amp-darwin-x64"
      sha256 "f9e16e31e0bf7d04014b8c70f3df9bc9192907254f3bc8243de7e9cd225b6de5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790179256-g22a153/amp-linux-arm64"
      sha256 "2665c415c1f24a579b83ccb8eaa72bc04d0e6068fc8f586814f96ae720a21f08"
    else
      url "https://static.ampcode.com/cli/0.0.1790179256-g22a153/amp-linux-x64"
      sha256 "4c4f626ccb0098596aa7c5ecac057cb9a18d05fa8fd78f08e29bb2575088f83c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
