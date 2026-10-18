class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792353656-g2a6ff8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792353656-g2a6ff8/amp-darwin-arm64"
      sha256 "9d063aee61c09fc01d8164fe81f6ddc26612d7b57b5d4bc41e027b5a2f4b4e00"
    else
      url "https://static.ampcode.com/cli/0.0.1792353656-g2a6ff8/amp-darwin-x64"
      sha256 "e58b57af5a311abd01409885ff5cc35fbeac1389013b3fd8564313e3d985f750"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792353656-g2a6ff8/amp-linux-arm64"
      sha256 "c0aa1d03d5b4f2ca7186ae3263c761c28cb3ca4aea9e22c8ea6caf158f19d0f2"
    else
      url "https://static.ampcode.com/cli/0.0.1792353656-g2a6ff8/amp-linux-x64"
      sha256 "06b5da1d95fee6198f52fc4e9e134a96b98ebd4dcb8b7b672955808b877fc334"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
