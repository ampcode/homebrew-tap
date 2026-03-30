class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774887473-g5cc438"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774887473-g5cc438/amp-darwin-arm64"
      sha256 "b92ebe3d2743d9eb8ce0bfb2626d1f1c65b7bb151d9935ea479d17c15c1f9885"
    else
      url "https://static.ampcode.com/cli/0.0.1774887473-g5cc438/amp-darwin-x64"
      sha256 "feaeae533848fe8831f0966a9863ccb2018401ca7e8954a58f9798d862ea8583"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774887473-g5cc438/amp-linux-arm64"
      sha256 "0986c0262eb4d343b266bc3fe4c2e2a26d81c11faa9bfb0afd0c9a01f078d91a"
    else
      url "https://static.ampcode.com/cli/0.0.1774887473-g5cc438/amp-linux-x64"
      sha256 "5d780024aff49fbea9c445683f11a50003c7eff2befa703eb484ab3cab118123"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
