class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785846794-g0de1fc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785846794-g0de1fc/amp-darwin-arm64"
      sha256 "a16db7551b8f4520abd121fbc85b8ceb1f5468e4f663016327ad15a39da6a4b4"
    else
      url "https://static.ampcode.com/cli/0.0.1785846794-g0de1fc/amp-darwin-x64"
      sha256 "0da3c90bc49ac7888f791a8d7d805ce30919375158f0e4b4caa351eb5a959258"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785846794-g0de1fc/amp-linux-arm64"
      sha256 "68fcf5310180f7640eb9980581141ca3c86f942f3d036871aa6d266dd8f20bc3"
    else
      url "https://static.ampcode.com/cli/0.0.1785846794-g0de1fc/amp-linux-x64"
      sha256 "6fb797cd7be032e5f674367460ebd0cd4a770700949839c63e5ddbfd336e4ee2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
