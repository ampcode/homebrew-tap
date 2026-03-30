class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774897010-g0ac150"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774897010-g0ac150/amp-darwin-arm64"
      sha256 "37b56dc218d366e233089a0b07bd5b2a372f3300093021a92fa3a4476e3793af"
    else
      url "https://static.ampcode.com/cli/0.0.1774897010-g0ac150/amp-darwin-x64"
      sha256 "5561f4b11423a9465136d46cde76d365596634d2b0460451c749cc3ca85bf5e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774897010-g0ac150/amp-linux-arm64"
      sha256 "27c06dd93734770081e7b8f31cb172f538afabb1c96be79ba47d855d335ce0e9"
    else
      url "https://static.ampcode.com/cli/0.0.1774897010-g0ac150/amp-linux-x64"
      sha256 "085f4abc072c85e048e56f7fa9c88ebad598c1da1bc0c47bc49cb6969b907806"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
