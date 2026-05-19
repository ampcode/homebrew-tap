class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779209758-g4230e0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779209758-g4230e0/amp-darwin-arm64"
      sha256 "e162e4cf9a52ad726e07d517ebeea4616fd1deba4944eb1f31220da898c8d290"
    else
      url "https://static.ampcode.com/cli/0.0.1779209758-g4230e0/amp-darwin-x64"
      sha256 "3f5c221e34075c992b65704279222685fb263f27a74c58e8b3aef32bb5609632"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779209758-g4230e0/amp-linux-arm64"
      sha256 "3399c932ef6cdfb02771338053af9bf1a25d7abf50982f84d9283d387f2186ec"
    else
      url "https://static.ampcode.com/cli/0.0.1779209758-g4230e0/amp-linux-x64"
      sha256 "04d0380fc4ad5e1833408ed905d1d3d6832729f103415a7a1688f88ee8d3ec7a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
