class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778986911-g002fab"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778986911-g002fab/amp-darwin-arm64"
      sha256 "0ce477ae123303831983e486543a7394e8748218d30d95dba3b90298f321103f"
    else
      url "https://static.ampcode.com/cli/0.0.1778986911-g002fab/amp-darwin-x64"
      sha256 "0bd9399bea0280af8c370efcc402f332ceeb6d714a115afe486bd2bfbda3436e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778986911-g002fab/amp-linux-arm64"
      sha256 "50866b20759f6478d2fc12e559f97b3ffd3cfeabe660606eeba10adc384d4ceb"
    else
      url "https://static.ampcode.com/cli/0.0.1778986911-g002fab/amp-linux-x64"
      sha256 "7090462cd62a0b2fa8b876d963cba15c97c3548215a693c551309f0ecdb8bf1d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
