class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774901365-g0ac150"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774901365-g0ac150/amp-darwin-arm64"
      sha256 "5e290e6f3f101315c25e25390aea5dc0c018fc158b59e7e4c1c9f294dc4353d6"
    else
      url "https://static.ampcode.com/cli/0.0.1774901365-g0ac150/amp-darwin-x64"
      sha256 "837b07b441db60e1d02e134bb1d7a07b7d0e81bee9c49ba3dac313b4338062a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774901365-g0ac150/amp-linux-arm64"
      sha256 "2a5abe121f3e354b086a9a07906a83e47eb80aed282551b53838f406b9cc1354"
    else
      url "https://static.ampcode.com/cli/0.0.1774901365-g0ac150/amp-linux-x64"
      sha256 "93745214a93281f58bd6ce5e666b663f7edea9d90e751c0ff031babfe178a6c7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
