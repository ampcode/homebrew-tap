class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785529588-g247d53"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785529588-g247d53/amp-darwin-arm64"
      sha256 "6fc2697164e9003bd49cbc4cfa09675ed1c9e0a7e60e84cd509747490d23badf"
    else
      url "https://static.ampcode.com/cli/0.0.1785529588-g247d53/amp-darwin-x64"
      sha256 "4ec7e943c082b41d2d75416c783377e1e5b9e4606bada1be2465ed65b9dd60dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785529588-g247d53/amp-linux-arm64"
      sha256 "6ff149a266cce1a08e2761c1c764cd0e3c65fb208538e582e7bd6fbefd1f20ae"
    else
      url "https://static.ampcode.com/cli/0.0.1785529588-g247d53/amp-linux-x64"
      sha256 "a573d25041827035194609c8c75ecbc02c91bf8a00e2b785ea0629b5a84653dc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
