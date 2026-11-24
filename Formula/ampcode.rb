class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795550436-g3454f1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795550436-g3454f1/amp-darwin-arm64"
      sha256 "0c79d5b80473ad8575a87e9b7d9220db931f1040bf934f26f35dff6c2e7d54ac"
    else
      url "https://static.ampcode.com/cli/0.0.1795550436-g3454f1/amp-darwin-x64"
      sha256 "faef1dfe26419792d691483c224be2bbff37f0277f2c74f39e89cffeba2a91ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795550436-g3454f1/amp-linux-arm64"
      sha256 "a226247bbb68f5368a88ca3563671b4add488805bb1d5a62cf9cdce23832f2ef"
    else
      url "https://static.ampcode.com/cli/0.0.1795550436-g3454f1/amp-linux-x64"
      sha256 "5c1debe56a0683e3d07fc6330af32ca73ae55588e2c6b7cae46b1b9e4b3da43d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
