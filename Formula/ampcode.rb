class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778480457-g5efd50"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778480457-g5efd50/amp-darwin-arm64"
      sha256 "a92d2354160ca773da3bb8f409b56b07215b0c1d64332b9b280ae1c17654612e"
    else
      url "https://static.ampcode.com/cli/0.0.1778480457-g5efd50/amp-darwin-x64"
      sha256 "9835b5b35c5308eef14b7fcb0624ab8e205ef01b620d99d064c0275415f87080"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778480457-g5efd50/amp-linux-arm64"
      sha256 "699f0a56c4e7a9fa2b61a31ff6f8121eac02c7ef6c469cd19a9644fb2e7f70b0"
    else
      url "https://static.ampcode.com/cli/0.0.1778480457-g5efd50/amp-linux-x64"
      sha256 "b8d794283c7d6368b254bf67e91df8d6053c4540272a402b902ea65ff751e06c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
