class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795132865-g864b56"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795132865-g864b56/amp-darwin-arm64"
      sha256 "23cc9e4b3a427c4c877a18ece3bad08869d33f7b3c9cd9e749a001a76912f19c"
    else
      url "https://static.ampcode.com/cli/0.0.1795132865-g864b56/amp-darwin-x64"
      sha256 "a7fce97ed2b5e768fd560478baccb1680c97c6393d7203cfc8403785eed507ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795132865-g864b56/amp-linux-arm64"
      sha256 "c0711ccee22496c82ac0ae29f25f28e96f61fa75231fda645dd3d6fd91babe05"
    else
      url "https://static.ampcode.com/cli/0.0.1795132865-g864b56/amp-linux-x64"
      sha256 "65b99e883bfed4c57d5fa63391b14ed11d657cf43ff9f72fbc71b7d665e323d3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
