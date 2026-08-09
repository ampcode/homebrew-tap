class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786268385-g93bb14"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786268385-g93bb14/amp-darwin-arm64"
      sha256 "a417f44e32d9f844d4f77dbbd876f763a5f5e46db33453a8a0ba5f71048bebae"
    else
      url "https://static.ampcode.com/cli/0.0.1786268385-g93bb14/amp-darwin-x64"
      sha256 "e923a18a69ed8340045085df2d6b91657599335f2e59f52ec2693fad12a6d846"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786268385-g93bb14/amp-linux-arm64"
      sha256 "8c58e420cf1fff9b7dd93142a685da3121b0d7bffc2be0406a990043e5a973c9"
    else
      url "https://static.ampcode.com/cli/0.0.1786268385-g93bb14/amp-linux-x64"
      sha256 "251a52c2edeec1b019bdf6528d898b3bd12e5c00ee9acb24baabff7834c83097"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
