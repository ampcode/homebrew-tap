class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785573772-g71f99c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785573772-g71f99c/amp-darwin-arm64"
      sha256 "babeb8b8d96b0eec8ce0665bdcae0463353653e0b408abd495b50ea0a135f3ed"
    else
      url "https://static.ampcode.com/cli/0.0.1785573772-g71f99c/amp-darwin-x64"
      sha256 "855a6be92b05009b07eb1226ccd91f3935f56b5d18eeef4dc14eff41f029e6df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785573772-g71f99c/amp-linux-arm64"
      sha256 "240848849fd9335c38ddac8cf90467468436f82824945f0e4173d98b2330b93d"
    else
      url "https://static.ampcode.com/cli/0.0.1785573772-g71f99c/amp-linux-x64"
      sha256 "6d501eff80c86c9059aa561270b3ab65df30ff58badcd2f784046698e1ecf2cf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
