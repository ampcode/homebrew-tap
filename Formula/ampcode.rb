class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793119929-g574f34"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793119929-g574f34/amp-darwin-arm64"
      sha256 "0c46292fc4f7d5a45f3993b7c21d430f2eeefc72354c60d471a1b306c38f7c49"
    else
      url "https://static.ampcode.com/cli/0.0.1793119929-g574f34/amp-darwin-x64"
      sha256 "0ab755e8cf38128170b7d37be5771d3d09a1e90b7428d8e3a4eec8fededc7af2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793119929-g574f34/amp-linux-arm64"
      sha256 "816f476f92bda02833c5fbff84552c75b88dff8749f242391452019e95a84c18"
    else
      url "https://static.ampcode.com/cli/0.0.1793119929-g574f34/amp-linux-x64"
      sha256 "93580139eb3eaa29d70530ef7e2a2f05717bff09c6cb7ab5e5e67d95aa1c42d6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
