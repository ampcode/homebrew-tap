class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792857622-ge1551c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792857622-ge1551c/amp-darwin-arm64"
      sha256 "504f98e9f77013bdf06652afe597f500bf73408c882c4614b4a4fdb6e718d5aa"
    else
      url "https://static.ampcode.com/cli/0.0.1792857622-ge1551c/amp-darwin-x64"
      sha256 "0810fcde41b1534abcee979b20ef6da57daca42aa6de7da4e9748631de3571fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792857622-ge1551c/amp-linux-arm64"
      sha256 "03a3db8a6a251986add0e0965144e826f04ce17013b3c80ed3d6d5793e370daa"
    else
      url "https://static.ampcode.com/cli/0.0.1792857622-ge1551c/amp-linux-x64"
      sha256 "cd0602f3bc6922773c300cf6fe9eba43fad0e5afeed92d86910e1492ce2ad17a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
