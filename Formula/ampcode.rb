class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787026227-g5016f3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787026227-g5016f3/amp-darwin-arm64"
      sha256 "54f760fcc9fea44a335de50f5227a3474319649fe5bb832ae296fd419b6d7803"
    else
      url "https://static.ampcode.com/cli/0.0.1787026227-g5016f3/amp-darwin-x64"
      sha256 "ed68a83e1da22a710e20987e7c410b5b5b3ac51df5821478f91e676bc3033638"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787026227-g5016f3/amp-linux-arm64"
      sha256 "05caeafa1b27d5125345aea6b70e1d6ee25afed598ba83f5d6044088cbb1dceb"
    else
      url "https://static.ampcode.com/cli/0.0.1787026227-g5016f3/amp-linux-x64"
      sha256 "c052e6edc4a50d2a5204736b7d3a02fcf3eb1a5b2923d52543680a818888e6ea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
