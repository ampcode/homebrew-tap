class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784420161-gfc1524"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784420161-gfc1524/amp-darwin-arm64"
      sha256 "40b36bb3ba27c2209033a612545c58b311ea00937fa8186251faa65f810af09e"
    else
      url "https://static.ampcode.com/cli/0.0.1784420161-gfc1524/amp-darwin-x64"
      sha256 "b244c3776a7e39a4dfbd5dc07043312a928169b5daede9563c87b19737b8a0bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784420161-gfc1524/amp-linux-arm64"
      sha256 "ed8d54dff515d6c4b3dc1ec04f9fe941def5aa43348ceba79c20a0c93a334044"
    else
      url "https://static.ampcode.com/cli/0.0.1784420161-gfc1524/amp-linux-x64"
      sha256 "6f11ea1e9194e088cdf8bbe8347b2acc8704fe91998399c93196e286505e5404"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
