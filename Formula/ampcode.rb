class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783343350-ge4cd52"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783343350-ge4cd52/amp-darwin-arm64"
      sha256 "938cbe7e4334a5cdb1c38973e02f656bf6da98f7f2aac34c1cdf9ec63419a6dc"
    else
      url "https://static.ampcode.com/cli/0.0.1783343350-ge4cd52/amp-darwin-x64"
      sha256 "4f8a956d388f15d380f078d0a20d0ffd6d9dd21869595cb7bfb8fb86a2d94c56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783343350-ge4cd52/amp-linux-arm64"
      sha256 "ee6d32a28033f8b5ade58b7392ed1ad6b1bba47b137af8262a29b6b1baa49ad5"
    else
      url "https://static.ampcode.com/cli/0.0.1783343350-ge4cd52/amp-linux-x64"
      sha256 "85d310c8d9b88e99482f2d2cb6a0fe18706326fb791c4c81d68b73f558f8d7e4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
