class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789228846-g1b23f3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789228846-g1b23f3/amp-darwin-arm64"
      sha256 "8ef64680f5b1437a9c038642f342677e6f89660adfd89fecc466c3e95661ea19"
    else
      url "https://static.ampcode.com/cli/0.0.1789228846-g1b23f3/amp-darwin-x64"
      sha256 "1d268fd457d95630d708cf82ef61968663a6722cdcc088ec4db1f520d2f7efcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789228846-g1b23f3/amp-linux-arm64"
      sha256 "9c3f28bda559fab8eb16dea5fd142b58acdc33bc12f524b4405de58abbe27f16"
    else
      url "https://static.ampcode.com/cli/0.0.1789228846-g1b23f3/amp-linux-x64"
      sha256 "b483c823f45b7014698b36d7ca0ca7dc61b4aa4969c92150eb8cdba3d3bfb913"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
