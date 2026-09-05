class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788638425-g646a48"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788638425-g646a48/amp-darwin-arm64"
      sha256 "5bb94c11833dd9508ce34a7fc9eb8f6e5ab0c04f65ce2d7ff6f5fd8089fd01eb"
    else
      url "https://static.ampcode.com/cli/0.0.1788638425-g646a48/amp-darwin-x64"
      sha256 "aa0c3ea47890d2277ee6ccb5f4809750ab97a7d41278e783f7e2721cbd4213af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788638425-g646a48/amp-linux-arm64"
      sha256 "34fbfa23f70da350c6f6b1a3defe1f75854ee1578c59143d7e38db1e05b47349"
    else
      url "https://static.ampcode.com/cli/0.0.1788638425-g646a48/amp-linux-x64"
      sha256 "45ec2ac03c18557e9141c834824d34a50de2852be17f66b29b71a6965f0fcb62"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
