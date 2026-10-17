class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792238457-g6ec988"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792238457-g6ec988/amp-darwin-arm64"
      sha256 "8dfe0693f4dcc3d2c6746a4c2b6331d83a2f8db7681fd510c249dc30cbeed7c9"
    else
      url "https://static.ampcode.com/cli/0.0.1792238457-g6ec988/amp-darwin-x64"
      sha256 "7c0b09156a3c3b2a9418e9ba2ebcdef0b84d88ba9c4d49b93aa0007d3d0f492c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792238457-g6ec988/amp-linux-arm64"
      sha256 "d765b88f1dff48bf7cd2d2822d37f81ba5e957d0a71ee75bd029b02dba0342a6"
    else
      url "https://static.ampcode.com/cli/0.0.1792238457-g6ec988/amp-linux-x64"
      sha256 "4ba30b878fea634eff1bc497039239caa633126aceabe0ddae82eb5d6755b99a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
