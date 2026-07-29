class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785342457-g1011d5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785342457-g1011d5/amp-darwin-arm64"
      sha256 "25860bb3ccc8ffc3fec90db47b82232614dd771bd827db51e55637615e13cda9"
    else
      url "https://static.ampcode.com/cli/0.0.1785342457-g1011d5/amp-darwin-x64"
      sha256 "646c4d79a4b94c9b2e3e9743c14228e131c278c9f4b7a74f43b116416ae2359b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785342457-g1011d5/amp-linux-arm64"
      sha256 "55e8d44b292bd1907c04ab8b72cf28f1c60e76ca29abf69f6ef0cd6b6b6e9fdf"
    else
      url "https://static.ampcode.com/cli/0.0.1785342457-g1011d5/amp-linux-x64"
      sha256 "e58bfc8531948c40282c78de52741b1b57376e23e45db7734834b0d8940aa911"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
