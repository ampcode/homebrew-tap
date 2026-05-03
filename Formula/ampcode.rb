class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777767163-g60c948"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777767163-g60c948/amp-darwin-arm64"
      sha256 "54eaccb208899203be8ecb06f742f254cb847dc1ddfe862836dce0408e9831c4"
    else
      url "https://static.ampcode.com/cli/0.0.1777767163-g60c948/amp-darwin-x64"
      sha256 "f930b1e1d4652af35657311fa0c7388ffd056dcebe206b0b4579521ebc2faa0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777767163-g60c948/amp-linux-arm64"
      sha256 "558d82fe2897d0ba093dedebb1f1a3db7fcf72e8becbf71e6de244a0b7abb709"
    else
      url "https://static.ampcode.com/cli/0.0.1777767163-g60c948/amp-linux-x64"
      sha256 "3aef5af1a90ff1cf069c8f941922fc908ce3d7b995e9f0fc38601d45ea9055ad"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
