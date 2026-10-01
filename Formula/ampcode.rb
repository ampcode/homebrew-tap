class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790856055-g589fab"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790856055-g589fab/amp-darwin-arm64"
      sha256 "e128b473ee402cba71b3f694613393388c40896bd32efc22962302bd053bbd64"
    else
      url "https://static.ampcode.com/cli/0.0.1790856055-g589fab/amp-darwin-x64"
      sha256 "99ecaa854841a77a86d0fc75629ae5e0d3052712dc0b3dd4023af391c8a2f5f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790856055-g589fab/amp-linux-arm64"
      sha256 "dd307b5c734fe12ed13ec7b84d84bb06d3fed1c78393db6cc04bdbf00cdc4ae6"
    else
      url "https://static.ampcode.com/cli/0.0.1790856055-g589fab/amp-linux-x64"
      sha256 "a2666887a22eb7f0721d325e51a8e8e7dd7307a8b96eda0e63bfe850a92e9fba"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
