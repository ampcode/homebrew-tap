class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794219756-g6994dc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794219756-g6994dc/amp-darwin-arm64"
      sha256 "ac917fd511eddfa121b1203db8f806568101d542120e305241072c395c8190c1"
    else
      url "https://static.ampcode.com/cli/0.0.1794219756-g6994dc/amp-darwin-x64"
      sha256 "993fce7aa3780f87c39cdc1bdc5aa540d0d30995a45fea573bf024f9dcf40d3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794219756-g6994dc/amp-linux-arm64"
      sha256 "f6cfa0a06c9575ee2d2a73e2c67988ca254dbeb97959691313a12edb71be7724"
    else
      url "https://static.ampcode.com/cli/0.0.1794219756-g6994dc/amp-linux-x64"
      sha256 "625b416e2964e1cd22d4150929925eda977d90ea001be44d6cdf580b1d9ebfa2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
