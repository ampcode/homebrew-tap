class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775809573-g243cc5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775809573-g243cc5/amp-darwin-arm64"
      sha256 "35dfac90a6ea999c835c7f0388b4c102fba1323e716d9ffb0c80cf4a2e78aa9a"
    else
      url "https://static.ampcode.com/cli/0.0.1775809573-g243cc5/amp-darwin-x64"
      sha256 "206f9048ca2f97bb282486b88c3526960912583325227749b46222af8513ce06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775809573-g243cc5/amp-linux-arm64"
      sha256 "ac9775c6ef4d5abcc1f3eeb04c30df6076681270e2e6b97c67852e503be9c5ab"
    else
      url "https://static.ampcode.com/cli/0.0.1775809573-g243cc5/amp-linux-x64"
      sha256 "49d858ddd385d210b52816b1df5643fca650b5f50c91ab1f98624f15054233b4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
