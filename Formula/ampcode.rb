class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778476494-g8a21dc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778476494-g8a21dc/amp-darwin-arm64"
      sha256 "ee954eb9f73cb46a11dd96695b27ddf73c7063e1253fff08d085c5d1d63e1e7c"
    else
      url "https://static.ampcode.com/cli/0.0.1778476494-g8a21dc/amp-darwin-x64"
      sha256 "e8cc982ac323cbf3ace6fda2945c0011d42bcdf9f389e4215ac8cd654a25b4d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778476494-g8a21dc/amp-linux-arm64"
      sha256 "d0d434e2717c9e6573996145f210d86ed42867219504f865d052122c9e2fc2a9"
    else
      url "https://static.ampcode.com/cli/0.0.1778476494-g8a21dc/amp-linux-x64"
      sha256 "003ec6079b8cd48026ea9665aac42532f548ab006b00e46ce3059c812188cffd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
