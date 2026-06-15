class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781515392-g643207"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781515392-g643207/amp-darwin-arm64"
      sha256 "0ec4c6b67f0ce41a67b32c95a59c0eb37023664a839ef1d00a04ca3157b2bd91"
    else
      url "https://static.ampcode.com/cli/0.0.1781515392-g643207/amp-darwin-x64"
      sha256 "6cff9ea151f8debb64846075374dcc9e7f3545838b3862753e08451f84facdae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781515392-g643207/amp-linux-arm64"
      sha256 "1199d03dcbf8275ade8812206a5bcd900194dce23b4ff9b3071a6b97196a76a9"
    else
      url "https://static.ampcode.com/cli/0.0.1781515392-g643207/amp-linux-x64"
      sha256 "02fa3470fa78d414dde5c80eb84eac2c3da23efd42771f5207d65ad79c5cc8fd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
