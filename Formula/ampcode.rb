class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775203974-g892106"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775203974-g892106/amp-darwin-arm64"
      sha256 "f71d9e661d1154d06493c1d8ac9252e8504f0c999902cd95e6f5ea267bb9775d"
    else
      url "https://static.ampcode.com/cli/0.0.1775203974-g892106/amp-darwin-x64"
      sha256 "f0faacd6b15c05b8343674fea2ed8b547efde21d468f82ed695bc36c2cb2650d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775203974-g892106/amp-linux-arm64"
      sha256 "fce6436be83e709136594eedbe8b9949d2a6009450f8002c39424744dc3dd038"
    else
      url "https://static.ampcode.com/cli/0.0.1775203974-g892106/amp-linux-x64"
      sha256 "ea6f2fd2f6fe11fd7135f4fb2922b6649637825581c72dd8a94451452895ceab"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
