class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795867242-g5fd9f7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795867242-g5fd9f7/amp-darwin-arm64"
      sha256 "d646e7097c03a10d91fab2c04673909813eb8b43d598837a1e9c81eb6ec93d17"
    else
      url "https://static.ampcode.com/cli/0.0.1795867242-g5fd9f7/amp-darwin-x64"
      sha256 "981a2ecc8ef0a90299b65b8dacde02903f0f9495ca783eaacfe49d3348eddac2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795867242-g5fd9f7/amp-linux-arm64"
      sha256 "8bf217428c15133f8564c87926daf00a9e97d4ce8eefb18c44c3003e7f177672"
    else
      url "https://static.ampcode.com/cli/0.0.1795867242-g5fd9f7/amp-linux-x64"
      sha256 "06281100fd14a43155c923ff1d88b308254acd4679cd923bc400d8ea2ff3fcec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
