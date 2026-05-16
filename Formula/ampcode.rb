class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778907715-g1c5411"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778907715-g1c5411/amp-darwin-arm64"
      sha256 "e4650934455fbc6501b9d988a7aa0566924251bb68c7a3607afc46699e5f4546"
    else
      url "https://static.ampcode.com/cli/0.0.1778907715-g1c5411/amp-darwin-x64"
      sha256 "7f191595278178922282f5c3bca5e651eb486b64085de12869fdae4262db3a7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778907715-g1c5411/amp-linux-arm64"
      sha256 "2f5e2c3cafa38d825b355e73b59bb390fa342213ecbd2339a6883e909260a2da"
    else
      url "https://static.ampcode.com/cli/0.0.1778907715-g1c5411/amp-linux-x64"
      sha256 "b81af5000a2b59e801f1bdb8c465369850b126ef9020e9cee72a027a57a3e2be"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
