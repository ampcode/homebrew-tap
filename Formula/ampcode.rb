class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792756861-g6187a2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792756861-g6187a2/amp-darwin-arm64"
      sha256 "a261c7d1e60214c7306d9aac29b0573e781aaa5f5c29c49a8fc5778cf59a1d79"
    else
      url "https://static.ampcode.com/cli/0.0.1792756861-g6187a2/amp-darwin-x64"
      sha256 "f3ca15578907995a4eb9cc2669f0d36a25f4f916707c27afc3cb78c7494074c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792756861-g6187a2/amp-linux-arm64"
      sha256 "cbb28d1e919acae181502b6e1813f62b549a9892456f4f0f9fe5d3f3a68116dc"
    else
      url "https://static.ampcode.com/cli/0.0.1792756861-g6187a2/amp-linux-x64"
      sha256 "abec54077e72e0f2d7a0657d20458de90a92c0e5f2b40eab529d3e7cc749e1d5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
