class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780378195-ge506a8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780378195-ge506a8/amp-darwin-arm64"
      sha256 "78d76886ac8cb8d74840058204f941745bc5edd8bcccbb80c740fb34a01ead1b"
    else
      url "https://static.ampcode.com/cli/0.0.1780378195-ge506a8/amp-darwin-x64"
      sha256 "0c2d1e9f25d9c3f57482b9dba010b40f18c87c67b5df4dfe06659629f4d3875a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780378195-ge506a8/amp-linux-arm64"
      sha256 "fc9ca0a758fd59814541e314e1da9bb440df4411d7e91f7f47f6d21256f45441"
    else
      url "https://static.ampcode.com/cli/0.0.1780378195-ge506a8/amp-linux-x64"
      sha256 "412d13760f276d0b150b2de784acad71adbb41e50b941591e1d1e39ae4e1b8a4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
