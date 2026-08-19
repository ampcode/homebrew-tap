class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787112648-gd35a66"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787112648-gd35a66/amp-darwin-arm64"
      sha256 "9b921267d909c1941bf276b4fcb7ec208307d282294920ba15a576d3d6e6c29a"
    else
      url "https://static.ampcode.com/cli/0.0.1787112648-gd35a66/amp-darwin-x64"
      sha256 "801117fd4bdcd45ed575c24cff6155924c8b9b38737ad27644882d31ea0b7ed3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787112648-gd35a66/amp-linux-arm64"
      sha256 "e6085f18b732e97d017b561025bdd3fb1ec4c8a4336a593a0dd5d221b288a9fa"
    else
      url "https://static.ampcode.com/cli/0.0.1787112648-gd35a66/amp-linux-x64"
      sha256 "4a5ef985f2d0e045f93b1cfebb8c1d345965f0ca20d5a5ec1a896b60d7459781"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
