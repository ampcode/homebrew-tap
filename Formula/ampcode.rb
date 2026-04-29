class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777469778-g63c7ad"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777469778-g63c7ad/amp-darwin-arm64"
      sha256 "20735a7ba2a0e7d5564d3cccf9e2ee6e1f24f98b12fbda6aa6cb4e6d789fc9f7"
    else
      url "https://static.ampcode.com/cli/0.0.1777469778-g63c7ad/amp-darwin-x64"
      sha256 "9b1ceac3d283d667625ca8420165ee4e90abba84a2f3e3cc73e62d65f0e35441"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777469778-g63c7ad/amp-linux-arm64"
      sha256 "bdca38f7fc8360411b5fe853a6fca9fb7cf07bf4ae47c90372f0defdcbc4d572"
    else
      url "https://static.ampcode.com/cli/0.0.1777469778-g63c7ad/amp-linux-x64"
      sha256 "2287af3c6456ee56aa6fa4c118cbcfeaf615c7e2ebd644b36c2945c5be81bdbc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
