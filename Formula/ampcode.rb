class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789716701-gf95c0d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789716701-gf95c0d/amp-darwin-arm64"
      sha256 "2ad0bcbb2c9a210b3faf1e4c6ab71695f42186b6834b5c756951d749c20a111e"
    else
      url "https://static.ampcode.com/cli/0.0.1789716701-gf95c0d/amp-darwin-x64"
      sha256 "2e42efca6e89b2fe2618e297a8ea0a1e13877d59ea2050e90d6a917608aa59b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789716701-gf95c0d/amp-linux-arm64"
      sha256 "a283935c9d4e9d58b5dd9085969f43bb29bf71774d191b99ee9e2af331b37d50"
    else
      url "https://static.ampcode.com/cli/0.0.1789716701-gf95c0d/amp-linux-x64"
      sha256 "40247deff771ba4ed29100fc046fe8847acd10a38adee9fa5ca88d2d0e1648c0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
