class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790337673-g203521"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790337673-g203521/amp-darwin-arm64"
      sha256 "e17d716151c6adf2c0328945ee94a99e9c79263340f30bfbfe94a1aea15445c1"
    else
      url "https://static.ampcode.com/cli/0.0.1790337673-g203521/amp-darwin-x64"
      sha256 "e4013c8949d2d57bea8f692aa8e168fca93c96d89a7aa3540844a6c8a89e100a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790337673-g203521/amp-linux-arm64"
      sha256 "7f7550553106a0dd9aac78418cccf38e49c115c10f8170654b48f88e1ba26c20"
    else
      url "https://static.ampcode.com/cli/0.0.1790337673-g203521/amp-linux-x64"
      sha256 "a4d0acb68b20413beb8d6af8cf7ff0625d6c546dd31b0504c234272a8ab6995e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
