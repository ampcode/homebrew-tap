class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781142024-g1d642f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781142024-g1d642f/amp-darwin-arm64"
      sha256 "6ced691e71b9d7d98c20a5756640b5191257c330959644b4f19d9813263e843f"
    else
      url "https://static.ampcode.com/cli/0.0.1781142024-g1d642f/amp-darwin-x64"
      sha256 "e41e423a9a38500e4bb336280ce675c5631d053bb1afbf93430256cade830bdb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781142024-g1d642f/amp-linux-arm64"
      sha256 "039b1cd1fcc0b13fef9b486fa16244ec0eb8ad9c25e66642d2a7400e3e3ccdee"
    else
      url "https://static.ampcode.com/cli/0.0.1781142024-g1d642f/amp-linux-x64"
      sha256 "84bb6535e12247e0d6262dc9a9332e68ac11f06d738f63867329b3180bb812e7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
